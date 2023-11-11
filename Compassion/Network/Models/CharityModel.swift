//
//  CharityModel.swift
//  Compassion
//
//  Created by Casper Daris on 22/04/2021.
//

import Foundation

struct CharityModel: Codable, Equatable {
    let adres: CharityAdres
    let name: String
    let description: String?
    let website: String?
    let phone: String?
    let email: String?
    let logoUrl: String
    let sector: [String]
}

struct CharityAdres: Codable, Equatable {
    let zip: String?
    let streetNumber: String?
    let streetName: String?
    let city: String
}
