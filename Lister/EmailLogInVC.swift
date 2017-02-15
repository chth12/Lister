//
//  EmailLogInVC.swift
//  Lister
//
//  Created by Christopher Heins on 2/10/17.
//  Copyright © 2017 Christopher Todd Heins. All rights reserved.
//

import UIKit
import Firebase

class EmailLogInVC: UIViewController {

    @IBOutlet weak var emailAddress: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBAction func unwindtoEmailLogInVC(unwind: UIStoryboardSegue) {
        //TODO get user log on information
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
    @IBAction func logInTouched(_ sender: Any) {
        let email = emailAddress.text! as String
        let password1 = password.text! as String
        if FUS.validateEmail(address: email) {
            if FUS.validatePasswordEmpty(pass1: password1){
                FIRAuth.auth()?.signIn(withEmail: email, password: password1, completion: { (user, error) in
                    if error != nil{
                        print("Error: \(error)")
                        self.alert(message: error!.localizedDescription)
                    } else {
                        let defaults = UserDefaults.standard
                        let profile = [(user?.uid)!,(user?.email)!]
                        defaults.set(profile, forKey: "profile")
                        self.performSegue(withIdentifier: "toMainVCFromEmailLogInVC", sender: self)
                    }
                })                
            } else {
                alert(message: "A password is required.")
            }
        } else {
            alert(message: "A valid e-mail address is required.")
        }
        
    }
    func alert(message: String) {
        
        let alertController = UIAlertController(title: "", message: message, preferredStyle: .alert)
        let OKaction = UIAlertAction(title: "OK", style: .default, handler: { (action) in
            self.dismiss(animated: true, completion: nil)
        })
        alertController.addAction(OKaction)
        present(alertController, animated: true, completion: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        self.emailAddress.text = nil
        self.password.text = nil
    }
}
