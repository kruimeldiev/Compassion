//
//  StoryboardProtocol.swift
//  Compassion
//
//  Created by Casper Daris on 02/04/2021.
//

import Foundation
import SwinjectStoryboard
import Swinject

//sourcery: AutoMockable
protocol StoryboardId {
    var identifier: String { get }
}

//sourcery: AutoMockable
protocol Storyboard {
    /// Initialize a new view controller
    func initial<T: UIViewController>() -> T?
    /// Set a storyboard to the viewcontroller using a storyboard ID
    func viewController<T: UIViewController>(identifier: StoryboardId) -> T?
}

