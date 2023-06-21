//
//  PDFCreatePersonalInfo.swift
//  CreatePDF
//
//  Created by Nikolai  on 21.06.2023.
//

import Foundation
import UIKit

extension PDFCreator {
    
    func pdfCreatePersonalInfo(originPoint: CGPoint) {
        
        guard let phoneImage = UIImage(systemName: "phone"),
              let emailImage = UIImage(systemName: "envelope") else { return }
        
        let phonePoint = addPhotoText(originPoint: originPoint,
                                      text: phone,
                                      image: phoneImage)
        
        _ = addPhotoText(originPoint: CGPoint(x: phonePoint.x + 20, y: phonePoint.y),
                         text: email,
                         image: emailImage)
    }
}
