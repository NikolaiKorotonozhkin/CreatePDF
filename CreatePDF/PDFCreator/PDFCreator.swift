//
//  PDFCreator.swift
//  CreatePDF
//
//  Created by Nikolai  on 20.06.2023.
//

import UIKit

final class PDFCreator {
    
    let name: String
    let email: String
    let phone: String
    let experience: Int
    let image: UIImage
    
    var currentPageRect = CGRect()
    
    init(name: String, email: String, phone: String, experience: Int, image: UIImage) {
        self.name = name
        self.email = email
        self.phone = phone
        self.experience = experience
        self.image = image
    }
    
}
