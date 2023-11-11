//
//  TimelineAssembly.swift
//  Compassion
//
//  Created by Casper Daris on 09/04/2021.
//

import Swinject
import SwinjectAutoregistration

class TimelineAssembly: Assembly {
    
    func assemble(container: Container) {
        
        container.register(TimelineRouterProtocol.self) { resolver in
            return TimelineRouter(rootNavigator: resolver ~> (RootNavigatorProtocol.self),
                                  search: resolver ~> (Storyboard.self, name: "Search"))
        }
        
        container.autoregister(TimelinePresenterProtocol.self, initializer: TimelinePresenter.init)
        container.autoregister(TimelineInteractorProtocol.self, initializer: TimelineInteractor.init)
        
        container.storyboardInitCompleted(TimelineViewController.self) { resolver, vc in
            let presenter = resolver ~> (TimelinePresenterProtocol.self)
            let interactor = resolver ~> (TimelineInteractorProtocol.self)
            let router = resolver ~> (TimelineRouterProtocol.self)
            
            router.set(viewController: vc)
            presenter.set(viewController: vc)
            
            vc.set(router: router)
            vc.set(interactor: interactor)
        }
    }
}
