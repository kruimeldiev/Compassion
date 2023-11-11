//
//  FavoriteService.swift
//  Compassion
//
//  Created by Casper Daris on 30/04/2021.
//

import Foundation
import Firebase

protocol FavoriteServiceProtocol {
    func setFavorite(user: String, charity: CharityModel, completion: @escaping(String, Bool) -> ())
    func clearFavorite(user: String, charity: String, completion: @escaping(String, Bool) -> ())
    func checkIfFavorite(user: String, charity: String, completion: @escaping(Bool) -> ())
}

class FavoriteService: FavoriteServiceProtocol {
    
    let db = Firestore.firestore()
    
    func setFavorite(user: String, charity: CharityModel, completion: @escaping(String, Bool) -> ()) {
        let dbRef = db.collection("favorieteOrganisaties")
        dbRef.document("\(user)AND\(charity.name)").setData(["eersteSector":charity.sector[0],
                                                             "gebruiker":user,
                                                             "logoUrl":charity.logoUrl,
                                                             "organisatie":charity.name,
                                                             "stad":charity.adres.city
        ]) { error in
            if let error = error {
                print("Something went wrong adding the favorite document")
                print(error)
                completion("Er is iets mis gegaan.", false)
            } else {
                print("Succesfull favorite document added!")
                completion("Toegevoegd aan favorieten!", true)
            }
        }
    }
    
    func clearFavorite(user: String, charity: String, completion: @escaping(String, Bool) -> ()) {
        let dbRef = db.collection("favorieteOrganisaties")
        dbRef.document("\(user)AND\(charity)").delete() { error in
            if let error = error {
                print("Something went wrong removing favorite")
                print(error.localizedDescription)
                completion(error.localizedDescription, true)
            } else {
                print("Favorite removed")
                completion("Favoriete verwijderd", false)
            }
        }
    }
    
    func checkIfFavorite(user: String, charity: String, completion: @escaping(Bool) -> ()) {
        let dbRef = db.collection("favorieteOrganisaties")
        dbRef.document("\(user)AND\(charity)").getDocument { (snapshot, error) in
            if let error = error {
                print("Something went wrong checking for favorite")
                print(error.localizedDescription)
                completion(false)
                return
            }
            guard let snapshot = snapshot, snapshot.exists else {
                completion(false)
                return
            }
            completion(true)
        }
    }
}
