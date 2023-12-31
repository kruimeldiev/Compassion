//
//  LoginRouterTests.swift
//  Compassion
//
//  Created by Casper Daris on 14/05/2021.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

@testable import Compassion
import XCTest
import SwiftyMocky

class LoginRouterTests: XCTestCase {
    
    // MARK: - Mocks
    private let mockViewController = LoginViewControllerProtocolMock()
    private let mockRootNavigator = RootNavigatorProtocolMock()
    private let mockStoryboard = StoryboardMock()
    
    // MARK: - Test lifecycle
    override func setUp() {
        
    }
    
    // MARK: - Tests
    func testRouteToRegister() {
        let vc = RegisterViewController()
        Given(mockStoryboard, .viewController(identifier: .any, willReturn: vc))
        let sut = createRouter()
        sut.route(to: .register)
        Verify(mockViewController, .show(.value(vc), sender: .any))
    }
    
    func testRouteToMain() {
        let sut = createRouter()
        sut.route(to: .main)
        Verify(mockRootNavigator, .setMainAsRoot())
    }
}

// MARK: Privates
private extension LoginRouterTests {
    
    func createRouter() -> LoginRouter {
        let router = LoginRouter(rootNavigator: mockRootNavigator,
                                 loginStoryboard: mockStoryboard,
                                 mainStoryboard: mockStoryboard)
        router.set(viewController: mockViewController)
        return router
    }
}



