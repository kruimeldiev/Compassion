//
//  LoginMocks.swift
//  CompassionTests
//
//  Created by Casper Daris on 14/05/2021.
//

import Foundation

@testable import Compassion

// MARK: - Types
typealias LoginRequestMock = Login.Login.Request
typealias LoginResponseMock = Login.Login.Response
typealias LoginViewModelMock = Login.Login.ViewModel

extension LoginRequestMock {
    static func mock() -> LoginRequestMock {
        return LoginRequestMock(email: "casperdaris@msn.com", password: "Admin123")
    }
}

extension LoginResponseMock {
    
    static func mockSucces() -> LoginResponseMock {
        return LoginResponseMock()
    }
    
    static func mockFailure() -> LoginResponseMock {
        return LoginResponseMock()
    }
    
    static func mockDataValidationFailure() -> LoginResponseMock {
        return LoginResponseMock()
    }
}

extension LoginViewModelMock {
    
    static func mockSucces() -> LoginViewModelMock {
        return LoginViewModelMock()
    }
    
    static func mockFailure() -> LoginViewModelMock {
        return LoginViewModelMock()
    }
    
    static func mockDataValidationFailure() -> LoginViewModelMock {
        return LoginViewModelMock()
    }
}
