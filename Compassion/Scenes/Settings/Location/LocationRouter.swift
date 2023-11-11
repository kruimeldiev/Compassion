////
//  LocationRouter.swift
//  Compassion
//
//  Created by Casper Daris on 13/05/2021.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//
//  This template is meant to work with Swinject.

import UIKit

protocol LocationRouterProtocol {
  func set(viewController: LocationViewControllerProtocol?)
  func route(to scene: LocationRouter.Scene)
}

class LocationRouter: NSObject, LocationRouterProtocol {

    //MARK: - DI
    weak var viewController: LocationViewControllerProtocol?
    private let rootNavigator: RootNavigatorProtocol

    func set(viewController: LocationViewControllerProtocol?) {
        self.viewController = viewController
    }

    init(rootNavigator: RootNavigatorProtocol) {
        self.rootNavigator = rootNavigator
    }
}

// MARK: - Routing logic
extension LocationRouter {

    enum Scene {
        case destination1
    }

    func route(to scene: LocationRouter.Scene) {
        switch scene {
        case .destination1:
            /// TODO: Implement routing
            break
        }
    }
}
