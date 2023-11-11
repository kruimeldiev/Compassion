//
//  SearchStoryboardId.swift
//  Compassion
//
//  Created by Casper Daris on 17/04/2021.
//

import Foundation

enum SearchStoryboardId: StoryboardId {
    
    case search
    case filters
    case detail
    case newReaction
    
    var identifier: String {
        switch self {
            case .search:
                return "Search"
            case .filters:
                return "Filter"
            case .detail:
                return "Detail"
            case .newReaction:
                return "NewReaction"
        }
    }
}
