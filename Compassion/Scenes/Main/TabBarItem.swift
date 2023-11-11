//
//  TabBarItem.swift
//  Compassion
//
//  Created by Casper Daris on 10/04/2021.
//

import UIKit

enum TabBarItem: Equatable, CaseIterable {
    
    /// These are the three items in the tabbar
    case search, timeline, settings
    
    /// Set the icons
    var icon: UIImage {
        switch self {
            case .search:
                return UIImage(systemName: "magnifyingglass")!
            case .timeline:
                return UIImage(systemName: "heart.fill")!
            case .settings:
                return UIImage(systemName: "ellipsis")!
        }
    }
    
    /// Set the name
    var name: String {
        switch self {
            case .search:
                return "Zoeken"
            case .timeline:
                return "Favorieten"
            case .settings:
                return "Meer"
        }
    }
    
    var tag: Int {
        switch self {
            case .search:
                return 0
            case .timeline:
                return 1
            case .settings:
                return 2
        }
    }
}
