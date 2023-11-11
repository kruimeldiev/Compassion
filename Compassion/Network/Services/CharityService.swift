//
//  CharityService.swift
//  Compassion
//
//  Created by Casper Daris on 23/04/2021.
//

import Foundation
import Firebase

protocol CharityServiceProtocol {
    func fetchCharities(city: String, sector: String, limit: Int, completion: @escaping([CharityModel]) -> ())
    func fetchFavorites(user: String, completion: @escaping ([CharityModel]) -> ())
    func fetchSingleCharity(charityName: String, completion: @escaping(CharityModel) -> ())
}

class CharityService: CharityServiceProtocol {
    
    let db = Firestore.firestore()
    
    // MARK: - Fetch multiple charities
    func fetchCharities(city: String, sector: String, limit: Int, completion: @escaping([CharityModel]) -> ()) {
        /// The array of charities to return in the completion
        var charityArray = [CharityModel]()
        
        /// Database reference with the standard limit of 100 (of no limit is set)
        var dbRef = db.collection("organisaties")
            .limit(to: limit)
        
        /// Add queries to dbRef (if necessary)
        /// City query
        if city != "" {
            dbRef = dbRef.whereField("adres.stad", isEqualTo: city)
        }
        /// Sector query
        if sector != "" {
            dbRef = dbRef.whereField("sectoren", arrayContains: sector)
        }
        
        /// Get the documents from the reference
        dbRef.getDocuments { (querySnapshot, error) in
            guard let querySnapshot = querySnapshot else {
                print("No documents where found while fetching 'organisaties'")
                return
            }
            if let error = error {
                print("Error while fetching 'organisaties':")
                print(error)
            } else {
                DispatchQueue.main.async {
                    for document in querySnapshot.documents {
                        let data = document.data()
                        let adres = data["adres"] as? [String: Any]
                        let zipCode = adres?["postcode"] as? String ?? ""
                        let number = adres?["huisnummer"] as? String ?? ""
                        let street = adres?["straatnaam"] as? String ?? ""
                        let city = adres?["stad"] as? String ?? ""
                        let name = data["naam"] as? String ?? ""
                        let description = data["beschrijving"] as? String ?? ""
                        let site = data["website"] as? String ?? ""
                        let phone = data["telefoon"] as? String ?? ""
                        let mail = data["email"] as? String ?? ""
                        let logoUrl = data["logoUrl"] as? String ?? ""
                        let sectors = data["sectoren"] as? [String] ?? []
                        charityArray.append(CharityModel(adres: .init(zip: zipCode,
                                                                      streetNumber: number,
                                                                      streetName: street,
                                                                      city: city),
                                                         name: name,
                                                         description: description,
                                                         website: site,
                                                         phone: phone,
                                                         email: mail,
                                                         logoUrl: logoUrl,
                                                         sector: sectors))
                    }
                    completion(charityArray)
                }
            }
        }
    }
    
    // MARK: - Fetch a single charity
    func fetchSingleCharity(charityName: String, completion: @escaping(CharityModel) -> ()) {
        let dbRef = db.collection("organisaties").document(charityName)
        dbRef.getDocument { (document, error) in
            guard let document = document else {
                print("No documents where found while fetching single 'organisatie'")
                return
            }
            if let error = error {
                print("Error while fetching single 'organisatie':")
                print(error)
            } else {
                DispatchQueue.main.async {
                    guard let data = document.data() else {
                        print("Something went wrong getting data.")
                        return
                    }
                    let adres = data["adres"] as? [String: Any]
                    let zipCode = adres?["postcode"] as? String ?? ""
                    let number = adres?["huisnummer"] as? String ?? ""
                    let street = adres?["straatnaam"] as? String ?? ""
                    let city = adres?["stad"] as? String ?? ""
                    let name = data["naam"] as? String ?? ""
                    let description = data["beschrijving"] as? String ?? ""
                    let site = data["website"] as? String ?? ""
                    let phone = data["telefoon"] as? String ?? ""
                    let mail = data["email"] as? String ?? ""
                    let logoUrl = data["logoUrl"] as? String ?? ""
                    let sectors = data["sectoren"] as? [String] ?? []
                    completion(CharityModel(adres: .init(zip: zipCode,
                                                         streetNumber: number,
                                                         streetName: street,
                                                         city: city),
                                            name: name,
                                            description: description,
                                            website: site,
                                            phone: phone,
                                            email: mail,
                                            logoUrl: logoUrl,
                                            sector: sectors))
                }
            }
        }
    }
    
    // MARK: - Fetch all the favorite charities
    func fetchFavorites(user: String, completion: @escaping ([CharityModel]) -> ()) {
        var favoritesArray = [CharityModel]()
        let dbRef = db.collection("favorieteOrganisaties")
            .whereField("gebruiker", isEqualTo: user)
        dbRef.getDocuments { (querySnapshot, error) in
            guard let querySnapshot = querySnapshot else {
                print("No documents where found while fetching 'favorieteOrganisaties'")
                return
            }
            if let error = error {
                print("Error while fetching 'favorieteOrganisaties':")
                print(error)
            } else {
                DispatchQueue.main.async {
                    for document in querySnapshot.documents {
                        let data = document.data()
                        let city = data["stad"] as? String ?? ""
                        let sector = data["eersteSector"] as? String ?? ""
                        let name = data["organisatie"] as? String ?? ""
                        let logoUrl = data["logoUrl"] as? String ?? ""
                        favoritesArray.append(CharityModel(adres: CharityAdres(zip: nil,
                                                                               streetNumber: nil,
                                                                               streetName: nil,
                                                                               city: city),
                                                           name: name,
                                                           description: nil,
                                                           website: nil,
                                                           phone: nil,
                                                           email: nil,
                                                           logoUrl: logoUrl,
                                                           sector: [sector]))
                    }
                    completion(favoritesArray)
                }
            }
        }
    }
    
}
