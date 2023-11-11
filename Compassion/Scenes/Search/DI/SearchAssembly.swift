//
//  SearchAssembly.swift
//  Compassion
//
//  Created by Casper Daris on 04/04/2021.
//

import Swinject
import SwinjectAutoregistration

class SearchAssembly: Assembly {
    
    func assemble(container: Container) {
        
        // MARK: - Search
        container.register(SearchRouterProtocol.self) { resolver in
            return SearchRouter(rootNavigator: resolver ~> (RootNavigatorProtocol.self),
                                search: resolver ~> (Storyboard.self, name: "Search"))
        }
        
        container.autoregister(SearchPresenterProtocol.self, initializer: SearchPresenter.init)
        container.autoregister(SearchInteractorProtocol.self, initializer: SearchInteractor.init)
        
        container.storyboardInitCompleted(SearchViewController.self) { resolver, vc in
            let presenter = resolver ~> (SearchPresenterProtocol.self)
            let interactor = resolver ~> (SearchInteractorProtocol.self)
            let router = resolver ~> (SearchRouterProtocol.self)
            
            router.set(viewController: vc)
            presenter.set(viewController: vc)
            
            vc.set(router: router)
            vc.set(interactor: interactor)
        }
        
        // MARK: - Search Filter Popup
        container.register(SearchFilterPopUpRouterProtocol.self) { resolver in
            return SearchFilterPopUpRouter(rootNavigator: resolver ~> (RootNavigatorProtocol.self))
        }
        
        container.autoregister(SearchFilterPopUpPresenterProtocol.self, initializer: SearchFilterPopUpPresenter.init)
        container.autoregister(SearchFilterPopUpInteractorProtocol.self, initializer: SearchFilterPopUpInteractor.init)
        
        container.storyboardInitCompleted(SearchFilterPopUpViewController.self) { resolver, vc in
            let presenter = resolver ~> (SearchFilterPopUpPresenterProtocol.self)
            let interactor = resolver ~> (SearchFilterPopUpInteractorProtocol.self)
            let router = resolver ~> (SearchFilterPopUpRouterProtocol.self)
            
            router.set(viewController: vc)
            presenter.set(viewController: vc)
            
            vc.set(router: router)
            vc.set(interactor: interactor)
        }
        
        // MARK: - Charity Detail
        container.register(CharityDetailRouterProtocol.self) { resolver in
            return CharityDetailRouter(rootNavigator: resolver ~> (RootNavigatorProtocol.self),
                                       search: resolver ~> (Storyboard.self, name: "Search"))
        }
        
        container.autoregister(CharityDetailPresenterProtocol.self, initializer: CharityDetailPresenter.init)
        container.autoregister(CharityDetailInteractorProtocol.self, initializer: CharityDetailInteractor.init)
        
        container.storyboardInitCompleted(CharityDetailViewController.self) { resolver, vc in
            let presenter = resolver ~> (CharityDetailPresenterProtocol.self)
            let interactor = resolver ~> (CharityDetailInteractorProtocol.self)
            let router = resolver ~> (CharityDetailRouterProtocol.self)
            
            router.set(viewController: vc)
            presenter.set(viewController: vc)
            
            vc.set(router: router)
            vc.set(interactor: interactor)
        }
        
        // MARK: - New ReactionView
        container.register(NewReactionRouterProtocol.self) { resolver in
            return NewReactionRouter(rootNavigator: resolver ~> (RootNavigatorProtocol.self))
        }
        
        container.autoregister(NewReactionPresenterProtocol.self, initializer: NewReactionPresenter.init)
        container.autoregister(NewReactionInteractorProtocol.self, initializer: NewReactionInteractor.init)
        
        container.storyboardInitCompleted(NewReactionViewController.self) { resolver, vc in
            let presenter = resolver ~> (NewReactionPresenterProtocol.self)
            let interactor = resolver ~> (NewReactionInteractorProtocol.self)
            let router = resolver ~> (NewReactionRouterProtocol.self)
            
            router.set(viewController: vc)
            presenter.set(viewController: vc)
            
            vc.set(router: router)
            vc.set(interactor: interactor)
        }
    }
}
