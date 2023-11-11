//
//  LocationInteractor.swift
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

protocol LocationInteractorProtocol {
    func handleLocationDidLoad()
}

class LocationInteractor: LocationInteractorProtocol {

    // MARK: - DI
    var presenter: LocationPresenterProtocol

    init(presenter: LocationPresenterProtocol) {
        self.presenter = presenter
    }
    
    func handleLocationDidLoad() {
        presenter.presentLocationSettings()
    }
}