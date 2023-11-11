//
//  ReactionServiceProtocolMock.swift
//  CompassionTests
//
//  Created by Casper Daris on 06/06/2021.
//

import Foundation
import XCTest
@testable import Compassion

open class ReactionServiceProtocolMock: ReactionServiceProtocol {
    
    public func fetchReactions(charity: String, completion: @escaping ([ReactionModel]) -> ()) {
        completion([ReactionModel.init(userName: "Gebruikersnaam", date: "Today", reaction: "Reactie")])
    }
    
    public func placeReaction(charity: String, reaction: ReactionModel, completion: @escaping (String, Bool) -> ()) {
        completion("Reactie", true)
    }    
}
