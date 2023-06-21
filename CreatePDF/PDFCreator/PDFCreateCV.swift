//
//  PDFCreateCV.swift
//  CreatePDF
//
//  Created by Nikolai  on 21.06.2023.
//

import PDFKit

extension PDFCreator {
    
    func pdfCreateCV(context: CGContext) {
        
        let photoOriginPoint = CGPoint(x: 10, y: 10)
        let imageRect = addImage(originPoint: photoOriginPoint,
                                 image: image,
                                 size: currentPageRect.width * 0.2)
        
        let titlePoint = pdfCreateTitle(originPoint: CGPoint(x: imageRect.maxX + 10,
                                            y: imageRect.minY - 5))
        
        pdfCreatePersonalInfo(originPoint: CGPoint(x: titlePoint.x, y: titlePoint.y + 10))
    }
}
