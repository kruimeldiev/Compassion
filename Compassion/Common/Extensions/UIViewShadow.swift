//
//  UIViewShadow.swift
//  Compassion
//
//  Created by Casper Daris on 09/04/2021.
//

import UIKit

extension UIView {
    
    func addShadowToView(color: UIColor, offset: CGSize, opacity: Float, radius: CGFloat) {
        self.clipsToBounds = false
        self.layer.shadowOffset = offset
        self.layer.shadowColor = color.cgColor
        self.layer.shadowOpacity = opacity
        self.layer.shadowRadius = radius
    }
}
