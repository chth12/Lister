//
//  RegisterUerVC.swift
//  Lister
//
//  Created by Christopher Heins on 2/10/17.
//  Copyright © 2017 Christopher Todd Heins. All rights reserved.
//

import UIKit
import Firebase


class RegisterUserVC: UIViewController {
    
    @IBOutlet weak var emailAddress: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var reEnterPassword: UITextField!
    //var FUS : FirebaseUserService = FirebaseUserService.instance
    
    
    @IBAction func registerButtonPressed(_ sender: Any?) {
        let email = emailAddress.text! as String
        let password1 = password.text! as String
        let password2 = reEnterPassword.text! as String
        if FUS.validateEmail(address: emailAddress.text! as String) {
            if FUS.validatePasswordEmpty(pass1: password1, pass2: password2){
                
                if FUS.validatePasswordMatch(pass1: password1, pass2: password2) {
                    FIRAuth.auth()?.createUser(withEmail: email, password: password1, completion: { (user, error) in
                        if error != nil {
                            self.alert(message: error!.localizedDescription)
                        } else {
                           self.performSegue(withIdentifier: "toLogInFromRegister", sender: self)
                        }
                    })
                } else {
                    alert(message: "The passwords do not match.")
                }
            } else {
                alert(message: "A password is required.")
            }
        } else {
            alert(message: "A valid e-mail address is required.")
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
        
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        self.emailAddress.text = nil
        self.password.text = nil
    }

    func alert(message: String) {
        
        let alertController = UIAlertController(title: "", message: message, preferredStyle: .alert)
        let OKaction = UIAlertAction(title: "OK", style: .default, handler: { (action) in
            self.dismiss(animated: true, completion: nil)
        })
        alertController.addAction(OKaction)
        present(alertController, animated: true, completion: nil)
        
        
    }
}
