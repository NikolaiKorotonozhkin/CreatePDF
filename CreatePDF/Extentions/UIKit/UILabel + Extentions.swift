//
//  UILabel + Extentions.swift
//  CreatePDF
//
//  Created by Nikolai  on 16.06.2023.
//

import UIKit

extension UILabel {
    convenience init(text: String = "") {
        self.init()
        self.text = text
        self.textColor = .lightGray
        self.font = .systemFont(ofSize: 12)
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}
