//
//  UserServiceMock.swift
//  CompassionTests
//
//  Created by Casper Daris on 14/05/2021.
//

import Foundation
import XCTest
@testable import Compassion

open class UserServiceProtocolMock: UserServiceProtocol {
    public func fetchUser(userId: String, completion: @escaping (UserProfile?) -> ()) {
        completion(UserProfile.init(id: userId, firstName: "Casper", lastName: "Daris", email: "casperdaris@msn.com"))
    }
}
