//
//  LoginInteractorTests.swift
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

class LoginInteractorTests: XCTestCase {

    // MARK: - Mocks
    private let mockPresenter = LoginPresenterProtocolMock()
    private let mockProfileManager = ProfileManagerProtocolMock()
    private let mockUserService = UserServiceProtocolMock()
    
    // MARK: - Test lifecycle
    override func setUp()   {
        
    }

    // MARK: - Tests
    func testHandleLoginDidLoad() {
        let sut = createInteractor()
        sut.handleLoginDidLoad()
    }
    
    func testHandleLoginButtonPressed() {
        let sut = createInteractor()
        sut.handleLoginButtonPressed(request: .init(email: "casperdaris@msn.com",
                                                    password: "Admin123"))
    }
}

// MARK: Privates
private extension  LoginInteractorTests {

    func createInteractor() ->  LoginInteractor {
        return .init(presenter: mockPresenter,
                     profileManager: mockProfileManager,
                     userService: mockUserService)
    }
}