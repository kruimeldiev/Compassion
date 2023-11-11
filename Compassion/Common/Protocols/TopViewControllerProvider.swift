//
//  TopViewControllerProvider.swift
//  Compassion
//
//  Created by Casper Daris on 05/04/2021.
//

import Foundation

// TO DO: Explain this class!!

protocol TopViewControllerProviderProtocol {
    func topViewController() -> UIViewControllerRouting?
}

class TopViewControllerProvider: TopViewControllerProviderProtocol {
    
    private let application: UIApplicationProtocol
    
    init(application: UIApplicationProtocol) {
        self.application = application
    }
    
    func topViewController() -> UIViewControllerRouting? {
        return application.topViewController(controller: nil)
    }
}
