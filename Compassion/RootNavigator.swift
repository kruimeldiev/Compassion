//
//  RootNavigator.swift
//  Compassion
//
//  Created by Casper Daris on 02/04/2021.
//

import Foundation
import FirebaseAuth

//sourcery: AutoMockable
protocol RootNavigatorProtocol: class {
    func setRootViewController()
    func setMainAsRoot()
    func setLoginAsRoot()
    func logout()
}

class RootNavigator: RootNavigatorProtocol {
    
    private var application: UIApplicationProtocol
    private let mainStoryboard: Storyboard
    private let loginStoryboard: Storyboard
    private let settings: Storyboard
    private let userDefaults: UserDefaultsProtocol
    
    init(application: UIApplicationProtocol,
         loginStoryboard: Storyboard,
         mainStoryboard: Storyboard,
         settings: Storyboard,
         defaults: UserDefaultsProtocol) {
        self.application = application
        self.loginStoryboard = loginStoryboard
        self.mainStoryboard = mainStoryboard
        self.settings = settings
        self.userDefaults = defaults
    }
    
    func setRootViewController() {
        if (Auth.auth().currentUser != nil) {
            setMainAsRoot()
        } else {
            setLoginAsRoot()
        }
    }
    
    func setLoginAsRoot() {
        /// Set the root view controller of the entire application to a newly initialized login storyboard
        application.rootViewController = loginStoryboard.initial()
    }
    
    func setMainAsRoot() {
        application.rootViewController = mainStoryboard.initial()
    }
    
    func logout() {
        do {
            print("Trying to logout user: \(Auth.auth().currentUser?.description)")
            try Auth.auth().signOut()
            userDefaults.removeObject(forKey: UserProfileKeys.profile.rawValue)
            print("Logout successfull")
            setLoginAsRoot()
        } catch {
            print("Problems while logging out user")
        }
    }
}
