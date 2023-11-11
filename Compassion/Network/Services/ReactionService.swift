//
//  ReactionService.swift
//  Compassion
//
//  Created by Casper Daris on 09/05/2021.
//

import Foundation
import Firebase

protocol ReactionServiceProtocol {
    func fetchReactions(charity: String, completion: @escaping([ReactionModel]) -> ())
    func placeReaction(charity: String, reaction: ReactionModel, completion: @escaping(String, Bool) -> ())
}

class ReactionService: ReactionServiceProtocol {
    
    let db = Firestore.firestore()
    
    // MARK: - Fetch all charity reactions
    func fetchReactions(charity: String, completion: @escaping ([ReactionModel]) -> ()) {
        var reactionArray = [ReactionModel]()
        let dbRef = db.collection("organisaties")
            .document(charity)
            .collection("reacties")
            .limit(to: 20)
        dbRef.getDocuments { (querySnapshot, error) in
            guard let querySnapshot = querySnapshot else {
                print("No reaction documents have been found while fetching")
                return
            }
            if let error = error {
                print("Error while fetching reactions")
                print(error)
            } else {
                DispatchQueue.main.async {
                    for document in querySnapshot.documents {
                        let data = document.data()
                        let user = data["gebruikersnaam"] as? String ?? ""
                        let date = data["datum"] as? String ?? ""
                        let reaction = data["reactie"] as? String ?? ""
                        reactionArray.append(ReactionModel(userName: user,
                                                           date: date,
                                                           reaction: reaction))
                    }
                    completion(reactionArray)
                }
            }
        }
    }
    
    // MARK: - Place new reaction
    func placeReaction(charity: String, reaction: ReactionModel, completion: @escaping(String, Bool) -> ()) {
        let dbRef = db.collection("organisaties").document(charity).collection("reacties")
        dbRef.document().setData(["datum":reaction.date,
                                  "gebruikersnaam":reaction.userName,
                                  "reactie":reaction.reaction]) { error in
            if let error = error {
                print("Something went wrong placing reaction")
                print(error)
                completion("Er is iets mis gegaan.", false)
            } else {
                print("Reactie toegevoegd")
                completion("Reactie toegevoegd!", true)
            }
        }
    }
}
