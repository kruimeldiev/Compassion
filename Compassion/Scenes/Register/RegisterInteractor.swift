//
//  RegisterInteractor.swift
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
import FirebaseAuth
import Firebase

protocol RegisterInteractorProtocol {
    typealias Request = Register.User.Request
    
    func handleRegisterDidLoad()
    func handleRegisterUser(request: Request)
    func validateInputs(request: Request)
}

class RegisterInteractor: RegisterInteractorProtocol {
    
    // MARK: - DI
    var presenter: RegisterPresenterProtocol
    
    init(presenter: RegisterPresenterProtocol) {
        self.presenter = presenter
    }
    
    // MARK: - Functions
    func handleRegisterDidLoad() {
        presenter.presentRegister()
    }
    
    func handleRegisterUser(request: Request) {
        /// Unwrapping all the data to register a new account with
        guard let email = request.email else {
            /// assertionFailure stops the app/program
            assertionFailure("Email for registration not found")
            return
        }
        guard let password = request.password else {
            assertionFailure("Password for registration not found")
            return
        }
        guard let firstName = request.firstName else {
            assertionFailure("First name for registration not found")
            return
        }
        guard let lastName = request.lastName else {
            assertionFailure("Last name for registration not found")
            return
        }
        
        /// Auth is a Firebase Authentication function that registers a new account
        Auth.auth().createUser(withEmail: email, password: password) { (result, error) in
            
            /// Check for errors
            if error != nil {
                print(error!.localizedDescription)
                self.presenter.presentRegisterError(error: error!.localizedDescription)
                return
            }
            
            /// Check if we have a result to add an 'gebruiker' object in the Firestore database
            guard let result = result else {
                print("Error: Something went wrong fetching the createUser result.")
                return
            }
            
            /// This function adds a 'document' (or a 'row' for SQL) and links it to the account we just created
            /// This document keeps track of all the fields of the account (uid, voornaam, achternaam)
            Firestore.firestore().collection("gebruikers").document(result.user.uid).setData(["uid": result.user.uid,
                                                                                              "email": email,
                                                                                              "voornaam": firstName,
                                                                                              "achternaam": lastName]) { error in
                if error != nil {
                    print("Error: User first and last name could not be saved to the database:")
                    print(error!.localizedDescription)
                    return
                }
            }
        }
        /// Tell the user that registration was succesfull
        presenter.presentNewUser()
    }
    
    /// This function checks if all the user input are filled in correctly for registering an account
    func validateInputs(request: Request) {
        
        /// First check of all the field have input
        guard (request.email != "") &&
                (request.password != "") &&
                (request.passwordVerify != "") &&
                (request.firstName != "") &&
                (request.lastName != "") else {
            presenter.presentRegisterError(error: "Niet alle velden zijn ingevoerd")
            return
        }
        
        /// Check if the passwords correspond
        guard request.password == request.passwordVerify else {
            presenter.presentRegisterError(error: "Wachtwoorden komen niet overeen")
            return
        }
        
        /// If all is well, use this function to register a new user
        handleRegisterUser(request: request)
    }
}
