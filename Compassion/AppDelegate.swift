//
//  AppDelegate.swift
//  Compassion
//
//  Created by Casper Daris on 26/03/2021.
//

import UIKit
import Firebase

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    let compassionApp = CompassionApp()
    
    /// The window is the app's user interface
    var window: UIWindow?

    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        /// Override point for customization after application launch.
        
        /// Configure Firebase for the NoSQL Database
        FirebaseApp.configure()
        
        /// Set the window that the app uses
        window = UIWindow(frame: UIScreen.main.bounds)
        
        /// Set the window as key window and make sure it is visable
        window?.makeKeyAndVisible()
        
        compassionApp.prepare()
        
        return true
    }
}

