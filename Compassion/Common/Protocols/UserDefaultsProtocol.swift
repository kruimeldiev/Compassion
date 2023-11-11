//
//  UserDefaultsProtocol.swift
//  Compassion
//
//  Created by Casper Daris on 19/04/2021.
//

import Foundation

//sourcery: AutoMockable
/// This protocol makes these functions testable/available for objects that conform to the protocol
/// Thanks to the protocol we only have access to the functions we actually need
protocol UserDefaultsProtocol {
    func set(_ value: Any?, forKey defaultName: String)
    func value(forKey key: String) -> Any?
    func removeObject(forKey defaultName: String)
}

/// Links the protocol to the UserDefaults
extension UserDefaults: UserDefaultsProtocol { }
