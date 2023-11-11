//
//  UIViewControllerRouting.swift
//  Compassion
//
//  Created by Casper Daris on 02/04/2021.
//

import UIKit

/// This protocol sets the default ways to show and dismiss new view controllers in the stack
protocol UIViewControllerRouting: class {
    /// Show a new view controller on top of the stack
    func show(_ vc: UIViewController, sender: Any?)
    /// Dismiss an view controller
    func dismiss(animated: Bool, completion: (() -> Void)?)
    func present(_ viewControllerToPresent: UIViewController, animated flag: Bool, completion: (() -> Void)?)
}

/// This protocol is the same as above, but for NavigationControllers
protocol UINavigationControllerRouting: class {
    func popViewController() -> UIViewController?
    func show(_ vc: UIViewController)
}

/// We need this extension to make sure all UIViewControllers have the functions that are set above
extension UIViewController: UIViewControllerRouting {
    
}
