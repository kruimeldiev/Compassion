//
//  UIApplicationProtocol.swift
//  Compassion
//
//  Created by Casper Daris on 02/04/2021.
//

import UIKit

/// This protocol decides which objects the UIApplication has to have
protocol UIApplicationProtocol {
    
    var delegate: UIApplicationDelegate? { get }
    var keyWindow: UIWindow? { get }
    var rootViewController: UIViewController? { get set }
    var settingsURL: URL? { get }
    func topViewController(controller: UIViewController?) -> UIViewController?
}

extension UIApplication: UIApplicationProtocol {
    
    /// Get and set the root view controller
    var rootViewController: UIViewController? {
        get {
            return windows.first?.rootViewController
        }
        set {
            /// The root view controller has to be set from the main thread
            if Thread.isMainThread {
                windows.first?.rootViewController = newValue
            } else {
                DispatchQueue.main.async {
                    self.windows.first?.rootViewController = newValue
                }
            }
        }
    }
    
    /// TO DO: Why is this needed?
    var settingsURL: URL? {
        return URL(string: UIApplication.openSettingsURLString)
    }
    
    /// TO DO: Why this func?
    func topViewController(controller: UIViewController?) -> UIViewController? {
        
        var base: UIViewController?
        
        if controller == nil {
            base = rootViewController
        } else { base = controller }
        
        if let navigationController = base as? UINavigationController {
            return topViewController(controller: navigationController.visibleViewController)
        }
        
        if let presented = base?.presentedViewController {
            return topViewController(controller: presented)
        }
        /// Will need this later when dealing with the side menu
        //        if let menuContainer = base as? MenuContainerViewController {
        //            return topViewController(controller: menuContainer.visibleViewController())
        //        }
        return base
    }
    
}
