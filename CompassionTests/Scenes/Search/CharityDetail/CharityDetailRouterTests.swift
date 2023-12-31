//
//  CharityDetailRouterTests.swift
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

class CharityDetailRouterTests: XCTestCase {

    // MARK: - Mocks
    private let mockViewController = CharityDetailViewControllerProtocolMock()
    private let mockRootNavigator = RootNavigatorProtocolMock()
    private let mockStoryboard = StoryboardMock()

    // MARK: - Test lifecycle
    override func setUp() {
        
    }

    // MARK: - Tests
}

// MARK: Privates
private extension CharityDetailRouterTests {

    func createRouter() -> CharityDetailRouter {
        let router = CharityDetailRouter(rootNavigator: mockRootNavigator,
                                         search: mockStoryboard)
        router.set(viewController: mockViewController)
        return router
    }
}



