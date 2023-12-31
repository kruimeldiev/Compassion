//
//  SettingsPresenter.swift
//  Compassion
//
//  Created by Casper Daris on 10/04/2021.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//
//  This template is meant to work with Swinject.

import UIKit

protocol SettingsPresenterProtocol {
    func set(viewController: SettingsViewControllerProtocol?)
    
    func presentSettings()
}

class SettingsPresenter: SettingsPresenterProtocol {
    
    // MARK: - DI
    weak var viewController: SettingsViewControllerProtocol?
    
    func set(viewController: SettingsViewControllerProtocol?) {
        self.viewController = viewController
    }
}

// MARK: - Methods
extension  SettingsPresenter {
    
    func presentSettings() {
        viewController?.displaySettings()
    }
}
