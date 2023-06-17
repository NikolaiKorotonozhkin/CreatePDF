//
//  UIView + Extensions.swift
//  CreatePDF
//
//  Created by Nikolai  on 17.06.2023.
//

import UIKit

extension UIView {
    
    func shake() {
        let horizontal: CGFloat = 5
        let verticaly: CGFloat = 0
        
        let animation = CABasicAnimation(keyPath: "position")
        animation.duration = 0.05
        animation.repeatCount = 5
        animation.autoreverses = true
        animation.fromValue = CGPoint(x: center.x - horizontal,
                                      y: center.y - verticaly)
        animation.toValue = CGPoint(x: center.x + horizontal,
                                    y: center.y + verticaly)
        
        layer.add(animation, forKey: "position")
    }
}
