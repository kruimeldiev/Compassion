//
//  CharityModelMock.swift
//  CompassionTests
//
//  Created by Casper Daris on 06/06/2021.
//

import Foundation

@testable import Compassion

// MARK: - Types
typealias CharityModelMock = CharityModel

extension CharityModelMock {
    static func mock() -> CharityModelMock {
        return .init(adres: .init(zip: "1234AB",
                                  streetNumber: "1",
                                  streetName: "Straatweg",
                                  city: "Utrecht"),
                     name: "Naam",
                     description: "Beschrijving",
                     website: "Website",
                     phone: "Telefoon",
                     email: "Email",
                     logoUrl: "Logo",
                     sector: ["Sector"])
    }
}
