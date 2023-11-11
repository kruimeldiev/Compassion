//
//  ProfileManagerProtocol.swift
//  Compassion
//
//  Created by Casper Daris on 19/04/2021.
//

import Foundation

//sourcery: AutoMockable
protocol ProfileManagerProtocol {
    func clearProfile()
    func setProfile(profile: UserProfile)
    func fetchProfile() -> UserProfile
}

/// This manager keeps track of the set user defaults
/// One of it's main functions (for this app) is to keep track of the logged in user so that we don't have to keep making network calls
class ProfileManager: ProfileManagerProtocol {
    
    /// The UserDefaults is a class that saves some basic information for the user in JSON format
    /// In this case, it keeps track of the logged in profile
    private let userDefaults: UserDefaultsProtocol
    
    init(userDefaults: UserDefaultsProtocol) {
        self.userDefaults = userDefaults
    }
    
    /// This function clears the profile from the user defaults
    func clearProfile() {
        userDefaults.removeObject(forKey: UserProfileKeys.profile.rawValue)
    }
    
    /// This function sets the logged in profile to the user defaults
    func setProfile(profile: UserProfile) {
        if let encodedProfile = try? JSONEncoder().encode(profile) {
            userDefaults.set(encodedProfile, forKey: UserProfileKeys.profile.rawValue)
        }
    }
    
    /// This function gets the logged in profile from the user defaults
    func fetchProfile() -> UserProfile {
        let guestUser = UserProfile(id: "", firstName: "Gebruiker", lastName: "", email: "")
        guard let savedProfile = userDefaults.value(forKey: UserProfileKeys.profile.rawValue) as? Data else {
            /// If no user could be received, return a guest user
            return guestUser
        }
        /// Try to decode the fetched user from the Defaults
        if let profile = try? JSONDecoder().decode(UserProfile.self, from: savedProfile) {
            return profile
        } else {
            /// If decoding fails, return the guest user
            return guestUser
        }
    }
}
