//
//  LocationViewController.swift
//  Compassion
//
//  Created by Casper Daris on 13/05/2021.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//
//  This template is meant to work with Swinject.

import UIKit

protocol LocationViewControllerProtocol: UIViewControllerRouting {
    func set(interactor: LocationInteractorProtocol)
    func set(router: LocationRouterProtocol)

    func displayLocationSettings()
}

class LocationViewController: UIViewController, LocationViewControllerProtocol {

    // MARK: - DI
    var interactor: LocationInteractorProtocol?
    var router: LocationRouterProtocol?

    func set(interactor: LocationInteractorProtocol) {
        self.interactor = interactor
    }

    func set(router: LocationRouterProtocol) {
        self.router = router
    }
    

    // MARK: - Outlets
    @IBOutlet weak var locationSwitch: UISwitch!
    @IBOutlet weak var locationInput: UITextField!
    @IBOutlet weak var saveButton: BlueButton!
    
    // MARK: - Properties

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.locationInput.delegate = self
        interactor?.handleLocationDidLoad()
    }
    
    func setupUI() {
        self.locationSwitch.onTintColor = UIColor(named: "ButtonBlue")
        if locationSwitch.isOn {
            self.locationInput.isEnabled = false
            self.locationInput.backgroundColor = UIColor.lightGray
        } else {
            self.locationInput.isEnabled = true
            self.locationInput.backgroundColor = UIColor.white
        }
    }

    // MARK: - Actions
    @IBAction func saveButtonTapped(_ sender: Any) {
        
    }
    
    
    @IBAction func switched(_ sender: Any) {
        self.locationInput.isEnabled = !self.locationSwitch.isOn
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
}

// MARK: - Methods
extension LocationViewController: UITextFieldDelegate {

    func displayLocationSettings() {
        self.locationInput.addShadowToView(color: .black, offset: .zero, opacity: 0.3, radius: 2)
        self.saveButton.addShadowToView(color: .black, offset: .zero, opacity: 0.3, radius: 2)
    }
}