//
//  CharityDetailPresenterTests.swift
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

class CharityDetailPresenterTests: XCTestCase {

    // MARK: - Mocks
    private let mockViewController = CharityDetailViewControllerProtocolMock()

    // MARK: - Test lifecycle
    override func setUp() {
        
    }

    // MARK: - Tests
}

// MARK: - Privates
private extension CharityDetailPresenterTests {

    func createPresenter() -> CharityDetailPresenter {
        let presenter =  CharityDetailPresenter()
        presenter.set(viewController: mockViewController)
        return presenter
    }
}

