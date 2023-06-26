//
//  PDFCreateInfo.swift
//  CreatePDF
//
//  Created by Nikolai  on 25.06.2023.
//

import Foundation
import PDFKit

extension PDFCreator {
    
    func pdfCreateInfo(originPoint: CGPoint, context: CGContext, title: String, description: String) -> CGRect {
        
        let titlePoint = addText(originPoint: originPoint,
                                 text: title,
                                 type: .bold,
                                 size: 20,
                                 color: .black)
        addLine(originPoint: CGPoint(x: titlePoint.minX, y: titlePoint.maxY + 5), drawContext: context)
        
        let descriptionPoint = addText(originPoint: CGPoint(x: originPoint.x, y: titlePoint.maxY + 11),
                                       text: description,
                                       type: .regular,
                                       size: 14,
                                       color: .black)
        return descriptionPoint
    }
}
