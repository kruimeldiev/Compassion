//
//  CharityTableViewCell.swift
//  Compassion
//
//  Created by Casper Daris on 22/04/2021.
//

import UIKit

class CharityTableViewCell: UITableViewCell {

    @IBOutlet weak var charityCardView: UIView!
    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var firstSectorView: SectorView!
    
    func makeTableViewCell(charity: CharityModel) {
        
        self.charityCardView.addShadowToView(color: .black,
                                             offset: .zero,
                                             opacity: 0.3,
                                             radius: 2)
        self.charityCardView.layer.cornerRadius = 12
        self.nameLabel.text = charity.name
        self.cityLabel.text = charity.adres.city
        firstSectorView.configure(sector: charity.sector[0])
        
        fetchCharityLogo(logoUrl: charity.logoUrl) { result in
            self.logoImageView.image = result
        }
        
        self.logoImageView.addShadowToView(color: .black, offset: .zero, opacity: 0.3, radius: 2)
    }
    
    func fetchCharityLogo(logoUrl: String, completion: @escaping(UIImage) -> ()) {
        
        /// 1. Check if image (logo) is already saved in the cache
        /// 2. The completion can be forced because of the if statement
        if ImageCache.cache.object(forKey: NSString(string: logoUrl)) != nil {
            completion(ImageCache.cache.object(forKey: NSString(string: logoUrl))!)
            return
        }
        
        /// If the image is not saved in the cache, call the network
        ImageService.getImageFromUrl(imageUrl: logoUrl) { result in
            completion(result)
        }
    }
}
