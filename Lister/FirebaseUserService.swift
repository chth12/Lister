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
    
    func validatePasswordMatch(pass1: String, pass2: String) -> Bool {
        if pass1.isEmpty {
            if pass2.isEmpty {
                return false
            }
        } else {
            if pass1 == pass2 {
                
            return true
            } else {
                return false
            }
        }
        return false
    }
    
    func logIn(address: String, pass: String) {
        FIRAuth.auth()?.createUser(withEmail: address as String, password: pass as String, completion: {
            (user, error) in
            if error != nil {
                print("TODD2: \(error!)")
            }
        })
    }
}
