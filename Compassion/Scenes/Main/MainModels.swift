//
//  MainModels.swift
//  Compassion
//
//  Created by Casper Daris on 10/04/2021.
//

import UIKit

enum MainModels {
    
    enum LoadTabBarItems {
        struct Request { }
        struct Response {
            let tabBarItems: [TabBarItem]
        }
        struct ViewModel {
            let tabBarItems: [TabBarItemViewModel]
        }
    }
    
}

struct TabBarItemViewModel: Equatable {
    /// Icon in the tab bar
    let icon: UIImage
    /// title/name for the tab bar item
    let title: String
    /// The assosiated VC for the tab bar item
    let viewController: UIViewController?
    /// The position in the tab bar
    let tag: Int
}
