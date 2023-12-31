//
//  SearchInteractor.swift
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
import Firebase

protocol SearchInteractorProtocol {
    typealias Request = Search.LoadScene.Request
    
    func handleSearchDidLoad(request: Request)
}

class SearchInteractor: SearchInteractorProtocol {

    // MARK: - DI
    private var presenter: SearchPresenterProtocol
    private let profileManager: ProfileManagerProtocol
    private let charityService: CharityServiceProtocol
    
    private var searchResults = [CharityModel]()

    init(presenter: SearchPresenterProtocol,
         profileManager: ProfileManagerProtocol,
         service: CharityServiceProtocol) {
        self.presenter = presenter
        self.profileManager = profileManager
        self.charityService = service
    }
    
    func handleSearchDidLoad(request: Request) {
        charityService.fetchCharities(city: request.city, sector: request.sector, limit: request.limit) { result in
            self.presenter.presentSearch(response: .init(userProfile: self.profileManager.fetchProfile(),
                                                         charities: result))
        }
    }
}
