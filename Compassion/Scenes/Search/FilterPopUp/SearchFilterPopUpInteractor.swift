//
//  SearchFilterPopUpInteractor.swift
//  Compassion
//
//  Created by Casper Daris on 17/04/2021.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//
//  This template is meant to work with Swinject.

import UIKit

protocol SearchFilterPopUpInteractorProtocol {
    func handleFilterPopUpViewDidLoad()
}

class SearchFilterPopUpInteractor: SearchFilterPopUpInteractorProtocol {

    // MARK: - DI
    var presenter: SearchFilterPopUpPresenterProtocol

    init(presenter: SearchFilterPopUpPresenterProtocol) {
        self.presenter = presenter
    }
    
    func handleFilterPopUpViewDidLoad() {
        
        var citiesArray = ["Amsterdam", "Zonnemaire", "Zuidoostbeemster", "Amersfoort", "Almere", "Haaren", "Amstelveen", "Ubbergen", "Den Haag", "Assen", "Barneveld", "Den Bosch", "Rotterdam", "Opheusden", "Apeldoorn"]
        citiesArray.sort()
        
        var sectorArray = ["Onderwijs", "Noodhulp", "Cultuur", "Gezondheidszorg", "Dierenwelzijn", "Religie", "Klimaat", "Onderzoek", "Zorgverlening", "Ontwikkelingshulp", "Natuurbehoud"]
        sectorArray.sort()
        
        presenter.presentFilterView(cities: citiesArray, sectors: sectorArray)
    }
}
