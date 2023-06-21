//
//  PDFAddPhotoText.swift
//  CreatePDF
//
//  Created by Nikolai  on 21.06.2023.
//

import Foundation
import UIKit

extension PDFCreator {
    
    func addPhotoText(originPoint: CGPoint, text: String, image: UIImage) -> CGPoint {
        
        let imagePoint = addImage(originPoint: originPoint,
                                  image: image,
                                  size: 20)
        
        let textPoint = addText(originPoint: CGPoint(x: imagePoint.maxX + 5, y: originPoint.y),
                                text: text,
                                type: .regular,
                                size: 14,
                                color: .black)
        
        return CGPoint(x: textPoint.maxX, y: textPoint.minY)
    }
}
