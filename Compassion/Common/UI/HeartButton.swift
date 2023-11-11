//
//  HeartButton.swift
//  Compassion
//
//  Created by Casper Daris on 30/04/2021.
//

import UIKit

class HeartButton: UIBarButtonItem {
    
    private var isFavorite = false
    
    private let unlikedImage = UIImage(systemName: "heart")
    private let likedImage = UIImage(systemName: "heart.fill")

    public func flipLikedState() {
        print("TAPPED")
        isFavorite.toggle()
//        animate()
    }
    
//    private func animate() {
//        /// When the button is tapped, we scale it down and flip the image
//        UIView.animate(withDuration: 0.1, animations: {
//            let newImage = self.isTapped ? self.likedImage : self.unlikedImage
//            self.transform = self.transform.scaledBy(x: 0.8, y: 0.8)
//            self.setImage(newImage, for: .normal)
//        }, completion: { _ in
//            /// When animation is finished, return the scale to original
//            UIView.animate(withDuration: 0.1, animations: {
//                self.transform = CGAffineTransform.identity
//            })
//        })
//    }
}
