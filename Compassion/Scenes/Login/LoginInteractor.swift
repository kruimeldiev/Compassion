//
//  LoginInteractor.swift
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

//sourcery: AutoMockable
protocol LoginInteractorProtocol {
    typealias Request = Login.Login.Request
    
    func handleLoginDidLoad()
    func handleLoginButtonPressed(request: Request)
}

class LoginInteractor: LoginInteractorProtocol {
    
    // MARK: - DI
    var presenter: LoginPresenterProtocol
    private let profileManager: ProfileManagerProtocol
    private let userService: UserServiceProtocol
    
    init(presenter: LoginPresenterProtocol,
         profileManager: ProfileManagerProtocol,
         userService: UserServiceProtocol) {
        self.presenter = presenter
        self.profileManager = profileManager
        self.userService = userService
    }
    
    func handleLoginDidLoad() {
        presenter.presentLogin()
    }
    
    /// This class handles the login logic
    /// 1. Try to log into Firebase
    /// 2. Get the user data from Firestore
    /// 3. Save the user data locally to the app's UserDefaults
    func handleLoginButtonPressed(request: Request) {
        Auth.auth().signIn(withEmail: request.email,
                           password: request.password) { (result, error) in
            /// If there is an error: pass it to the presenter
            if error != nil {
                self.presenter.presentNotAbleToLogin(error: "Unable to log into Firebase")
                return
            }
            /// Unwrapping the result
            guard let result = result else {
                self.presenter.presentNotAbleToLogin(error: "Something went wrong while logging in")
                return
            }
            /// Fetch the user data from Firestore and save the logged in user locally
            self.userService.fetchUser(userId: result.user.uid) { result in
                if result != nil {
                    self.profileManager.setProfile(profile: .init(id: result!.id,
                                                                  firstName: result!.firstName,
                                                                  lastName: result!.lastName,
                                                                  email: result!.email))
                    self.presenter.presentSuccesfullLogin()
                }
            }
        }
    }
}
