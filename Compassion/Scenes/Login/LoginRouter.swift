////
//  LoginRouter.swift
//  Compassion
//
//  Created by Casper Daris on 02/04/2021.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//
//  This template is meant to work with Swinject.

import UIKit

//sourcery: AutoMockable
protocol LoginRouterProtocol {
    func set(viewController: LoginViewControllerProtocol?)
    func route(to scene: LoginRouter.Scene)
}

class LoginRouter: NSObject, LoginRouterProtocol {
    
    //MARK: - DI
    weak var viewController: LoginViewControllerProtocol?
    private let rootNavigator: RootNavigatorProtocol
    private let loginStoryboard: Storyboard
    private let mainStoryboard: Storyboard
    
    func set(viewController: LoginViewControllerProtocol?) {
        self.viewController = viewController
    }
    
    init(rootNavigator: RootNavigatorProtocol,
         loginStoryboard: Storyboard,
         mainStoryboard: Storyboard) {
        self.rootNavigator = rootNavigator
        self.loginStoryboard = loginStoryboard
        self.mainStoryboard = mainStoryboard
    }
}

// MARK: Routing logic
extension LoginRouter {
    
    enum Scene {
        case register
        case main
    }
    
    func route(to scene: LoginRouter.Scene) {
        switch scene {
            case .register:
                guard let vc = loginStoryboard.viewController(identifier: LoginStoryboardId.register) else {
                    assertionFailure("Unable to instantiate register settings view controller")
                    return
                }
                viewController?.show(vc, sender: nil)
            case .main:
                rootNavigator.setMainAsRoot()
        }
    }
}
