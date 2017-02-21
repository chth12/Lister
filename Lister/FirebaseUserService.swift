//
//  LoginService.swift
//  Lister
//
//  Created by Christopher Heins on 2/12/17.
//  Copyright © 2017 Christopher Todd Heins. All rights reserved.
//

import Foundation
import UIKit
import Firebase

public class FirebaseUserService: NSObject {
    
    static let instance = FirebaseUserService()
    
    func validateEmail(address: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        if address.isEmpty{
            return false
        } else {
            let emailTest = NSPredicate(format: "SELF MATCHES %@", emailRegEx)
            return emailTest.evaluate(with: address)
        }
    }
    func validatePasswordEmpty(pass1: String, pass2: String = "N/A") -> Bool {
        if pass1.isEmpty {
            return false
        } else if pass2.isEmpty {
            return false
        } else {
            return true
        }
    }
    func validatePasswordMatch(pass1: String, pass2: String) -> Bool {
        if pass1 == pass2 {
            return true
        }
        return false
    }
    
}
