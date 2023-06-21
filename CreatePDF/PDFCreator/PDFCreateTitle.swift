//
//  PDFCreateTitle.swift
//  CreatePDF
//
//  Created by Nikolai  on 21.06.2023.
//

import Foundation

extension PDFCreator {
    
    func pdfCreateTitle(originPoint: CGPoint) -> CGPoint {
        
        let nameText = addText(originPoint: originPoint,
                               text: name,
                               type: .bold,
                               size: 30,
                               color: .black)
        
        let developer = addText(originPoint: CGPoint(x: nameText.minX, y: nameText.maxY),
                                text: "Junior IOS Developer",
                                type: .regular,
                                size: 20,
                                color: .darkGray)
        
        return CGPoint(x: developer.minX, y: developer.maxY)
    }
}
