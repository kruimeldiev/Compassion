////
//  TermsRouter.swift
//  Compassion
//
//  Created by Casper Daris on 17/04/2021.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//
//  This template is meant to work with Swinject.

import UIKit

protocol TermsRouterProtocol {
  func set(viewController: TermsViewControllerProtocol?)
  func route(to scene: TermsRouter.Scene)
}

class TermsRouter: NSObject, TermsRouterProtocol {

    //MARK: DI
    weak var viewController: TermsViewControllerProtocol?
    private let rootNavigator: RootNavigatorProtocol

    func set(viewController: TermsViewControllerProtocol?) {
        self.viewController = viewController
    }

    init(rootNavigator: RootNavigatorProtocol) {
        self.rootNavigator = rootNavigator
    }
}

// MARK: Routing logic
extension TermsRouter {

    enum Scene {
        case destination1
    }

    func route(to scene: TermsRouter.Scene) {
        switch scene {
        case .destination1:
            /// TODO: Implement routing
            break
        }
    }
}

