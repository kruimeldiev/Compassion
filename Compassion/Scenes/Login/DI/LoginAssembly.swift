//
//  LoginAssembly.swift
//  Compassion
//
//  Created by Casper Daris on 02/04/2021.
//

import Swinject
import SwinjectAutoregistration

/// The assembly uses Swinject to assemble a specific scene
/// It takes al the parts (vc, router, interactor, presenter, etc.) initializes them and puts them together
/// This specific assembly is used for al the VC's in Login.storyboard
class LoginAssembly: Assembly {
    
    func assemble(container: Container) {
        
        // MARK: - Login DI
        
        /// Register the login router
        container.register(LoginRouterProtocol.self) { resolver in
            return LoginRouter(rootNavigator: resolver ~> (RootNavigatorProtocol.self),
                               loginStoryboard: resolver ~> (Storyboard.self, name: "Login"),
                               mainStoryboard: resolver ~> (Storyboard.self, name: "Main"))
        }
        /// Register the login presenter
        container.autoregister(LoginPresenterProtocol.self, initializer: LoginPresenter.init)
        /// Register the login interactor
        container.autoregister(LoginInteractorProtocol.self, initializer: LoginInteractor.init)
        /// Glue al the parts together
        container.storyboardInitCompleted(LoginViewController.self) { resolver, vc in
            let presenter = resolver ~> (LoginPresenterProtocol.self)
            let interactor = resolver ~> (LoginInteractorProtocol.self)
            let router = resolver ~> (LoginRouterProtocol.self)
            
            router.set(viewController: vc)
            presenter.set(viewController: vc)
            
            vc.set(router: router)
            vc.set(interactor: interactor)
        }
        
        // MARK: - Register DI
        
        container.autoregister(RegisterPresenterProtocol.self, initializer: RegisterPresenter.init)
        container.autoregister(RegisterInteractorProtocol.self, initializer: RegisterInteractor.init)
        
        container.storyboardInitCompleted(RegisterViewController.self) { resolver, vc in
            let presenter = resolver ~> (RegisterPresenterProtocol.self)
            let interactor = resolver ~> (RegisterInteractorProtocol.self)
            presenter.set(viewController: vc)
            vc.set(interactor: interactor)
        }
    }
}
