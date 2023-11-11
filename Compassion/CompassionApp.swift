//
//  CompassionApp.swift
//  Compassion
//
//  Created by Casper Daris on 02/04/2021.
//

import Foundation
import Swinject
import SwinjectAutoregistration

//sourcery: AutoMockable
protocol CompassionAppProtocol {
    func prepare()
}

/// This class sets up the entire app.
/// Using the 'prepare' function, everything in the app will be setup for use
class CompassionApp: NSObject, CompassionAppProtocol {
    
    private let rootNavigator: RootNavigatorProtocol
    private let application: UIApplicationProtocol
    
    init(rootNavigator: RootNavigatorProtocol,
         application: UIApplicationProtocol) {
        self.rootNavigator = rootNavigator
        self.application = application
    }
    
    /// The convenience initializer always has to call the designated initializer
    /// This initializer basically puts the enitre app together (assembling) using Swinject
    convenience init(sharedAssembly: Assembly,
                     sharedContainer: Container) {
        sharedAssembly.assemble(container: sharedContainer)
        self.init(
            rootNavigator: sharedContainer ~> RootNavigatorProtocol.self,
            application: sharedContainer ~> UIApplicationProtocol.self)
    }
    
    convenience override init() {
        /// Create a global shared assembly
        let sharedAssembly = SharedAssembly()
        /// Initialize the application
        self.init(sharedAssembly: sharedAssembly,
                  sharedContainer: sharedAssembly.sharedContainer)
    }
    
    /// Prepare everything while the app is launching
    func prepare() {
        rootNavigator.setRootViewController()
    }
}
