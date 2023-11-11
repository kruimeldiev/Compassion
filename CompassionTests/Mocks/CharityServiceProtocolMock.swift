//
//  CharityServiceProtocolMock.swift
//  CompassionTests
//
//  Created by Casper Daris on 06/06/2021.
//

import Foundation
import XCTest
@testable import Compassion

open class CharityServiceProtocolMock: CharityServiceProtocol {
    
    public func fetchCharities(city: String, sector: String, limit: Int, completion: @escaping ([CharityModel]) -> ()) {
        completion([CharityModel.init(adres: .init(zip: "1234AB",
                                                   streetNumber: "1",
                                                   streetName: "Straatweg",
                                                   city: "Utrecht"),
                                      name: "Naam",
                                      description: "Beschrijving",
                                      website: "Website",
                                      phone: "Telefoon",
                                      email: "Email",
                                      logoUrl: "Logo",
                                      sector: ["Sector"])])
    }
    
    public func fetchFavorites(user: String, completion: @escaping ([CharityModel]) -> ()) {
        completion([CharityModel.init(adres: .init(zip: "1234AB",
                                                   streetNumber: "1",
                                                   streetName: "Straatweg",
                                                   city: "Utrecht"),
                                      name: "Naam",
                                      description: "Beschrijving",
                                      website: "Website",
                                      phone: "Telefoon",
                                      email: "Email",
                                      logoUrl: "Logo",
                                      sector: ["Sector"])])
    }
    
    public func fetchSingleCharity(charityName: String, completion: @escaping (CharityModel) -> ()) {
        completion(CharityModel.init(adres: .init(zip: "1234AB",
                                                  streetNumber: "1",
                                                  streetName: "Straatweg",
                                                  city: "Utrecht"),
                                     name: "Naam",
                                     description: "Beschrijving",
                                     website: "Website",
                                     phone: "Telefoon",
                                     email: "Email",
                                     logoUrl: "Logo",
                                     sector: ["Sector"]))
    }
    
    
}
