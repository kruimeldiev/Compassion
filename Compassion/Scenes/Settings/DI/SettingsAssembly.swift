//
//  SettingsAssembly.swift
//  Compassion
//
//  Created by Casper Daris on 10/04/2021.
//

import Swinject
import SwinjectAutoregistration

class SettingsAssembly: Assembly {
    
    func assemble(container: Container) {
        
        // MARK: - Settings Main Menu
        container.register(SettingsRouterProtocol.self) { resolver in
            return SettingsRouter(rootNavigator: resolver ~> (RootNavigatorProtocol.self),
                                  settings: resolver ~> (Storyboard.self, name: "Settings"))
        }
        container.autoregister(SettingsPresenterProtocol.self, initializer: SettingsPresenter.init)
        container.autoregister(SettingsInteractorProtocol.self, initializer: SettingsInteractor.init)
        
        container.storyboardInitCompleted(SettingsViewController.self) { resolver, vc in
            let presenter = resolver ~> (SettingsPresenterProtocol.self)
            let interactor = resolver ~> (SettingsInteractorProtocol.self)
            let router = resolver ~> (SettingsRouterProtocol.self)
            
            router.set(viewController: vc)
            presenter.set(viewController: vc)
            
            vc.set(router: router)
            vc.set(interactor: interactor)
        }
        
        // MARK: - About App
        container.register(AboutAppRouterProtocol.self) { resolver in
            return AboutAppRouter(rootNavigator: resolver ~> (RootNavigatorProtocol.self))
        }
        container.autoregister(AboutAppPresenterProtocol.self, initializer: AboutAppPresenter.init)
        container.autoregister(AboutAppInteractorProtocol.self, initializer: AboutAppInteractor.init)
        
        container.storyboardInitCompleted(AboutAppViewController.self) { resolver, vc in
            let presenter = resolver ~> (AboutAppPresenterProtocol.self)
            let interactor = resolver ~> (AboutAppInteractorProtocol.self)
            let router = resolver ~> (AboutAppRouterProtocol.self)
            
            router.set(viewController: vc)
            presenter.set(viewController: vc)
            
            vc.set(router: router)
            vc.set(interactor: interactor)
        }
        
        // MARK: - Privacy
        container.register(PrivacyRouterProtocol.self) { resolver in
            return PrivacyRouter(rootNavigator: resolver ~> (RootNavigatorProtocol.self))
        }
        container.autoregister(PrivacyPresenterProtocol.self, initializer: PrivacyPresenter.init)
        container.autoregister(PrivacyInteractorProtocol.self, initializer: PrivacyInteractor.init)
        
        container.storyboardInitCompleted(PrivacyViewController.self) { resolver, vc in
            let presenter = resolver ~> (PrivacyPresenterProtocol.self)
            let interactor = resolver ~> (PrivacyInteractorProtocol.self)
            let router = resolver ~> (PrivacyRouterProtocol.self)
            
            router.set(viewController: vc)
            presenter.set(viewController: vc)
            
            vc.set(router: router)
            vc.set(interactor: interactor)
        }
        
        // MARK: - Terms
        container.register(TermsRouterProtocol.self) { resolver in
            return TermsRouter(rootNavigator: resolver ~> (RootNavigatorProtocol.self))
        }
        container.autoregister(TermsPresenterProtocol.self, initializer: TermsPresenter.init)
        container.autoregister(TermsInteractorProtocol.self, initializer: TermsInteractor.init)
        
        container.storyboardInitCompleted(TermsViewController.self) { resolver, vc in
            let presenter = resolver ~> (TermsPresenterProtocol.self)
            let interactor = resolver ~> (TermsInteractorProtocol.self)
            let router = resolver ~> (TermsRouterProtocol.self)
            
            router.set(viewController: vc)
            presenter.set(viewController: vc)
            
            vc.set(router: router)
            vc.set(interactor: interactor)
        }
        
        // MARK: - Location
        container.register(LocationRouterProtocol.self) { resolver in
            return LocationRouter(rootNavigator: resolver ~> (RootNavigatorProtocol.self))
        }
        container.autoregister(LocationPresenterProtocol.self, initializer: LocationPresenter.init)
        container.autoregister(LocationInteractorProtocol.self, initializer: LocationInteractor.init)
        
        container.storyboardInitCompleted(LocationViewController.self) { resolver, vc in
            let presenter = resolver ~> (LocationPresenterProtocol.self)
            let interactor = resolver ~> (LocationInteractorProtocol.self)
            let router = resolver ~> (LocationRouterProtocol.self)
            
            router.set(viewController: vc)
            presenter.set(viewController: vc)
            
            vc.set(router: router)
            vc.set(interactor: interactor)
        }
    }
}
