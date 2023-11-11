//
//  SettingsStoryboardId.swift
//  Compassion
//
//  Created by Casper Daris on 17/04/2021.
//

import Foundation

enum SettingsStoryboardId: StoryboardId {
    
    case account
    case location
    case terms
    case privacy
    case about
    
    var identifier: String {
        switch self {
            case .account:
                return "Account"
            case .location:
                return "Location"
            case .terms:
                return "Terms"
            case .privacy:
                return "Privacy"
            case .about:
                return "AboutApp"
        }
    }
}
