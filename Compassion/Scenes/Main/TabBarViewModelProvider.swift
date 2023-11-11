//
//  TabBarViewModelProvider.swift
//  Compassion
//
//  Created by Casper Daris on 10/04/2021.
//

import Foundation

protocol TabBarViewModelProviderProtocol {
    func viewModel(for item: TabBarItem) -> TabBarItemViewModel
}

// TO DO: Explain this class please
class TabBarViewModelProvider: TabBarViewModelProviderProtocol {
    
    private let searchStoryboard: Storyboard
    private let timelineStoryboard: Storyboard
    private let settingsStoryboard: Storyboard
    
    init(search: Storyboard, timeline: Storyboard, settings: Storyboard) {
        self.searchStoryboard = search
        self.timelineStoryboard = timeline
        self.settingsStoryboard = settings
    }
    
    func viewModel(for item: TabBarItem) -> TabBarItemViewModel {
        var storyboard: Storyboard?
        switch item {
            case .search: storyboard = searchStoryboard
            case .timeline: storyboard = timelineStoryboard
            case .settings: storyboard = settingsStoryboard
        }
        
        return TabBarItemViewModel(icon: item.icon,
                                   title: item.name,
                                   viewController: storyboard?.initial(),
                                   tag: item.tag)
    }
}
