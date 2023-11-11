//
//  MainAssembly.swift
//  Compassion
//
//  Created by Casper Daris on 09/04/2021.
//

import Swinject
import SwinjectAutoregistration

class MainAssembly: Assembly {
    
    func assemble(container: Container) {
        
        container.register(MainRouterProtocol.self) { resolver in
            return MainRouter(rootNavigator: resolver ~> (RootNavigatorProtocol.self))
        }
        
        container.autoregister(MainPresenterProtocol.self, initializer: MainPresenter.init)
        container.autoregister(MainInteractorProtocol.self, initializer: MainInteractor.init)
        
        container.storyboardInitCompleted(MainViewController.self) { resolver, vc in
            let presenter = resolver ~> (MainPresenterProtocol.self)
            let interactor = resolver ~> (MainInteractorProtocol.self)
            let router = resolver ~> (MainRouterProtocol.self)
            
            router.set(viewController: vc)
            presenter.set(viewController: vc)
            
            vc.set(router: router)
            vc.set(interactor: interactor)
        }
        
        // MARK: - Tab bar view model provider
        container.register(TabBarViewModelProviderProtocol.self) { resolver in
            return TabBarViewModelProvider(search: resolver ~> (Storyboard.self, name: "Search"),
                                           timeline: resolver ~> (Storyboard.self, name: "Timeline"),
                                           settings: resolver ~> (Storyboard.self, name: "Settings"))
        }
    }
}
