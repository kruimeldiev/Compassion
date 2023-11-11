//
//  SharedAssembly.swift
//  Compassion
//
//  Created by Casper Daris on 02/04/2021.
//

import UIKit
import Foundation
import Swinject
import SwinjectAutoregistration
import SwinjectStoryboard

// TO DO: Explain what SharedAssembly does
class SharedAssembly: Assembly {
    
    let sharedContainer = Container()
    
    func assemble(container: Container) {
        
        // MARK: - Root Navigator
        container.register(RootNavigatorProtocol.self) { resolver in
            let rootNavigator = RootNavigator(application: resolver ~> UIApplicationProtocol.self,
                                              loginStoryboard: resolver ~> (Storyboard.self, name: "Login"),
                                              mainStoryboard: resolver ~> (Storyboard.self, name: "Main"),
                                              settings: resolver ~> (Storyboard.self, name: "Settings"),
                                              defaults: resolver ~> (UserDefaultsProtocol.self))
            return rootNavigator
        }
        
        // MARK: - UserDefaults
        container.register(UserDefaultsProtocol.self) { _ in
            return UserDefaults.standard
        }
        
        // MARK: - Profile Manager
        container.register(ProfileManagerProtocol.self) { _ in
            return ProfileManager(userDefaults: UserDefaults.standard) as ProfileManagerProtocol
        }
        
        // MARK: - Charity Service
        container.register(CharityServiceProtocol.self) { resolver in
            return CharityService()
        }
        
        // MARK: - User Service
        container.register(UserServiceProtocol.self) { resolver in
            return UserService()
        }
        
        // MARK: - Image Service
        container.register(ImageServiceProtocol.self) { resolver in
            return ImageService()
        }
        
        // MARK: - Favorite Service
        container.register(FavoriteServiceProtocol.self) { resolver in
            return FavoriteService()
        }
        
        // MARK: - Reaction Service
        container.register(ReactionServiceProtocol.self) { resolver in
            return ReactionService()
        }
        
        // MARK: - UIApplication
        container.register(UIApplicationProtocol.self) { _ in UIApplication.shared }
        
        // MARK: - Login
        /// Registering a storyboard to the container calls the init funciton in the LoginStoryboard class
        /// This means that al the Clean Swift components will be assembled
        container.register(Storyboard.self, name: "Login") { _ in
            return LoginStoryboard(sharedContainer: container, assembly: LoginAssembly())
        }
        
        // MARK: - Main
        container.register(Storyboard.self, name: "Main") { _ in
            return MainStoryboard(sharedContainer: container, assembly: MainAssembly())
        }
        
        // MARK: - Search
        container.register(Storyboard.self, name: "Search") { _ in
            return SearchStoryboard(sharedContainer: container, assembly: SearchAssembly())
        }
        
        // MARK: - Timeline
        container.register(Storyboard.self, name: "Timeline") { _ in
            return TimelineStoryboard(sharedContainer: container, assembly: TimelineAssembly())
        }
        
        // MARK: - Settings
        container.register(Storyboard.self, name: "Settings") { _ in
            return SettingsStoryboard(sharedContainer: container, assembly: SettingsAssembly())
        }
    }
}
