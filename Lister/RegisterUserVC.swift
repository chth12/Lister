//
//  RegisterUerVC.swift
//  Lister
//
//  Created by Christopher Heins on 2/10/17.
//  Copyright © 2017 Christopher Todd Heins. All rights reserved.
//

import UIKit
import FirebaseAuth


class RegisterUserVC: UIViewController {
    
    
    @IBOutlet weak var emailAddress: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var reEnterPassword: UITextField!
    var FUS : FirebaseUserService = FirebaseUserService.instance

    @IBAction func registerButtonPressed(_ sender: Any?) {
        let email = emailAddress.text! as String
        let password1 = password.text! as String
        let password2 = reEnterPassword.text! as String
        if FUS.validateEmail(address: emailAddress.text! as String) {
            if FUS.validatePasswordMatch(pass1: password1, pass2: password2) {
                FUS.logIn(address: email, pass: password1)
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
