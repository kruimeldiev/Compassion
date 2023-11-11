//
//  ImageService.swift
//  Compassion
//
//  Created by Casper Daris on 24/04/2021.
//

import UIKit

protocol ImageServiceProtocol {
    static func getImageFromUrl(imageUrl: String, completion: @escaping(UIImage) -> ())
}

class ImageService: ImageServiceProtocol {
    
    static func getImageFromUrl(imageUrl: String, completion: @escaping(UIImage) -> ()) {
        
        guard let url = URL(string: imageUrl) else {
            print("Image not available from: \(imageUrl)")
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard error == nil else {
                print(error!)
                return
            }
            
            if data != nil {
                DispatchQueue.main.async {
                    ImageCache.cache.setObject(UIImage(data: data!)!, forKey: NSString(string: imageUrl))
                    completion(UIImage(data: data!)!)
                }
            }
        }.resume()
    }
}
