//
//  UserService.swift
//  Compassion
//
//  Created by Casper Daris on 23/04/2021.
//

import Foundation
import Firebase

protocol UserServiceProtocol {
    func fetchUser(userId: String, completion: @escaping(UserProfile?) -> ())
}

class UserService: UserServiceProtocol {
    
    let db = Firestore.firestore()
    
    func fetchUser(userId: String, completion: @escaping (UserProfile?) -> ()) {
        db.document("gebruikers/\(userId)").getDocument { (docSnapshot, error) in
            /// Check if the document exists (unwrapping first)
            guard let docSnapshot = docSnapshot, docSnapshot.exists else {
                print("User document not found")
                completion(nil)
                return
            }
            /// Unwrap the data from the document
            let data = docSnapshot.data()
            let id = data?["uid"] as? String ?? "no_uid_in_doc"
            let firstName = data?["voornaam"] as? String ?? "no_voornaam_in_doc"
            let lastName = data?["achternaam"] as? String ?? "no_achternaam_in_doc"
            let mail = data?["email"] as? String ?? "no_email_in_doc"
            completion(UserProfile(id: id,
                                   firstName: firstName,
                                   lastName: lastName,
                                   email: mail))
        }
    }
}
