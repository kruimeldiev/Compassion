//
//  LoginStoryboardId.swift
//  Compassion
//
//  Created by Casper Daris on 14/05/2021.
//

import Foundation

enum LoginStoryboardId: StoryboardId {
    
    case login
    case register
    
    var identifier: String {
        switch self {
            case .login:
                return "Login"
            case .register:
                return "Register"
        }
    }
}
