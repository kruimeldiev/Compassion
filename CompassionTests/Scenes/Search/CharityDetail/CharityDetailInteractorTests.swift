//
//  CharityDetailInteractorTests.swift
//  Compassion
//
//  Created by Casper Daris on 06/06/2021.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

@testable import Compassion
import XCTest
import SwiftyMocky

class CharityDetailInteractorTests: XCTestCase {

    // MARK: - Mocks
    private let mockPresenter = CharityDetailPresenterProtocolMock()
    private let mockCharityService = CharityServiceProtocolMock()
    private let mockFavoriteService = FavoriteServiceProtocolMock()
    private let mockProfileManager = ProfileManagerProtocolMock()
    private let mockReactionService = ReactionServiceProtocolMock()

    // MARK: - Test lifecycle
    override func setUp()   {
        
    }
    
    // MARK: - Tests
}

// MARK: Privates
private extension  CharityDetailInteractorTests {

    func createInteractor() -> CharityDetailInteractor {
        return .init(presenter: mockPresenter,
                     charityService: mockCharityService,
                     favoriteService: mockFavoriteService,
                     profile: mockProfileManager,
                     reactionService: mockReactionService)
    }
}
