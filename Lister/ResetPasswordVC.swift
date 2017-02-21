//
//  ResetPasswordRegisterUserVC.swift
//  Lister
//
//  Created by Christopher Heins on 2/10/17.
//  Copyright © 2017 Christopher Todd Heins. All rights reserved.
//

import UIKit
import Firebase

class ResetPasswordVC: UIViewController {

    @IBOutlet weak var emailAddress: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
    }
    @IBAction func resetPressed(_ sender: Any) {
            if FUS.validateEmail(address: emailAddress.text!) {
            
            FIRAuth.auth()?.sendPasswordReset(withEmail: emailAddress.text!, completion: { (error) in
                
                if error != nil {
                    self.alert(message: error!.localizedDescription)
                } else {
                    self.alert(message: "Check your e-mail for a reset link.")
                    self.performSegue(withIdentifier: "toLogInFromReset", sender: self)
                }
            })
        } else {
            alert(message: "A valid e-mail address is required")
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        self.emailAddress.text = nil
    }

}
