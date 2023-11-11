//
//  CharityDetailInteractor.swift
//  Compassion
//
//  Created by Casper Daris on 24/04/2021.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//
//  This template is meant to work with Swinject.

import UIKit

//sourcery: AutoMockable
protocol CharityDetailInteractorProtocol {
    typealias CharityRequest = CharityDetail.Charity.Request
    typealias FavoriteRequest = CharityDetail.Favorite.Request
    
    func handleCharityDetailDidLoad(request: CharityRequest)
    func handleFavoriteButtonTapped(request: FavoriteRequest)
}

class CharityDetailInteractor: CharityDetailInteractorProtocol {
    
    // MARK: - DI
    var presenter: CharityDetailPresenterProtocol
    private var charityService: CharityServiceProtocol
    private var favoriteService: FavoriteServiceProtocol
    private var profileManager: ProfileManagerProtocol
    private var reactionService: ReactionServiceProtocol
    
    init(presenter: CharityDetailPresenterProtocol,
         charityService: CharityServiceProtocol,
         favoriteService: FavoriteServiceProtocol,
         profile: ProfileManagerProtocol,
         reactionService: ReactionServiceProtocol) {
        self.presenter = presenter
        self.charityService = charityService
        self.favoriteService = favoriteService
        self.profileManager = profile
        self.reactionService = reactionService
    }
    
    func handleCharityDetailDidLoad(request: CharityRequest) {
        let user = profileManager.fetchProfile()
        
        /// Fetch the favorite status of the charity if user is logged in
        if user.id != "" {
            fetchFavoriteStatus(charity: request.name)
        }
        
        fetchReactions(charity: request.name)
        
        /// Fetch the logo of the charity
        ImageService.getImageFromUrl(imageUrl: request.logoUrl) { imageResult in
            self.presenter.presentCharityDetail(response: .init(logo: imageResult))
        }
    }
    
    func fetchReactions(charity: String) {
        reactionService.fetchReactions(charity: charity) { result in
            self.presenter.presentReactions(response: .init(reactions: result))
        }
    }
    
    func fetchFavoriteStatus(charity: String) {
        let user = profileManager.fetchProfile()
        favoriteService.checkIfFavorite(user: user.email, charity: charity) { result in
            self.presenter.presentFavoriteFetched(response: .init(message: "Favorite checked",
                                                             isNowFavorite: result))
        }
    }
    
    func handleFavoriteButtonTapped(request: FavoriteRequest) {
        let user = profileManager.fetchProfile()

        if request.initialState {
            favoriteService.clearFavorite(user: user.email, charity: request.charity.name) { (message, state) in
                self.presenter.presentFavoriteTappedResult(response: .init(message: message,
                                                                           isNowFavorite: state))
            }
        } else {
            favoriteService.setFavorite(user: user.email, charity: request.charity) { (message, state)  in
                self.presenter.presentFavoriteTappedResult(response: .init(message: message,
                                                                           isNowFavorite: state))
            }
        }
    }
}
