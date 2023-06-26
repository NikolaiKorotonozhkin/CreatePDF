//
//  PDFCreateCV.swift
//  CreatePDF
//
//  Created by Nikolai  on 21.06.2023.
//

import PDFKit

extension PDFCreator {
    
    func pdfCreateCV(context: CGContext) {
        
        guard let userExperience = Resources.WorkExperience(rawValue: experience),
              let skills = Resources.Skills(rawValue: experience) else { return }
        
        let photoOriginPoint = CGPoint(x: 10, y: 10)
        let imageRect = addImage(originPoint: photoOriginPoint,
                                 image: image,
                                 size: currentPageRect.width * 0.2)
        
        let titlePoint = pdfCreateTitle(originPoint: CGPoint(x: imageRect.maxX + 10,
                                            y: imageRect.minY - 5))
        
        pdfCreatePersonalInfo(originPoint: CGPoint(x: titlePoint.x, y: titlePoint.y + 10))
        
        let summaryPoint = pdfCreateInfo(originPoint: CGPoint(x: imageRect.minX, y: imageRect.maxY + 20),
                                         context: context,
                                         title: Resources.CVTitles.summary.rawValue,
                                         description: Resources.Summary.first.rawValue)
        
        let workExperience = pdfCreateInfo(originPoint: CGPoint(x: imageRect.minX, y: summaryPoint.maxY + 20),
                                           context: context,
                                           title: Resources.CVTitles.workExperience.rawValue,
                                           description: userExperience.description)
        
        let skillPoint = pdfCreateInfo(originPoint: CGPoint(x: imageRect.minX, y: workExperience.maxY + 20),
                                       context: context,
                                       title: Resources.CVTitles.skills.rawValue,
                                       description: skills.description)
        
        _ = pdfCreateInfo(originPoint: CGPoint(x: imageRect.minX, y: skillPoint.maxY + 20),
                          context: context,
                          title: Resources.CVTitles.education.rawValue,
                          description: Resources.Education.university.rawValue)
    }
}
