//
//  UserModel.swift
//  Compassion
//
//  Created by Casper Daris on 19/04/2021.
//

import Foundation

struct UserProfile: Codable {
    var id: String
    var firstName: String
    var lastName: String
    var email: String
}

enum UserProfileKeys: String {
    case profile = "compassion_user_profile"
}
