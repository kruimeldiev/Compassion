//
//  RegisterModels.swift
//  Compassion
//
//  Created by Casper Daris on 16/04/2021.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

enum Register {
  
  enum User {
    
    struct Request {
        let email: String?
        let password: String?
        let passwordVerify: String?
        let firstName: String?
        let lastName: String?
    }
    
    struct Response {
        let email: String?
        let password: String?
        let firstName: String?
        let lastName: String?
    }
    
    struct ViewModel {
        
    }
  }
}
