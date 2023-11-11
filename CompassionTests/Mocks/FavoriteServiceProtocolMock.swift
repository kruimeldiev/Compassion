//
//  FavoriteServiceProtocolMock.swift
//  CompassionTests
//
//  Created by Casper Daris on 06/06/2021.
//

import Foundation
import XCTest
@testable import Compassion

open class FavoriteServiceProtocolMock: FavoriteServiceProtocol {
    
    public func setFavorite(user: String, charity: CharityModel, completion: @escaping (String, Bool) -> ()) {
        completion("Favorite", true)
    }
    
    public func clearFavorite(user: String, charity: String, completion: @escaping (String, Bool) -> ()) {
        completion("Favorite", true)
    }
    
    public func checkIfFavorite(user: String, charity: String, completion: @escaping (Bool) -> ()) {
        completion(true)
    }
    
    
}
