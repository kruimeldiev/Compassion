//
//  BlueButton.swift
//  Compassion
//
//  Created by Casper Daris on 09/04/2021.
//

import UIKit

class BlueButton: UIButton {
    
    /// TO DO: What does this do?
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupButton()
    }
    
    /// TO DO: What does this do?
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.setupButton()
    }
    
    @IBInspectable var fillColor: UIColor = UIColor(named: "ButtonBlue") ?? .blue
    
    @IBInspectable var cornerRadius: CGFloat = 12
    
    func setupButton() {
        self.layer.cornerRadius = cornerRadius
        self.backgroundColor = fillColor
    }
}
