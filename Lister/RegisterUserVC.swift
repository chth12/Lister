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

    @IBAction func registerButtonPressed(_ sender: Any?) {
        print("TODD: button pressed")
        if emailAddress != nil || password != nil || reEnterPassword != nil{
            FIRAuth.auth()?.createUser(withEmail: emailAddress.text! as String, password: password.text! as String, completion: {
                (user, error) in
                if error != nil {
                    print("TODD2: \(error!)")
                    self.emailAddress.borderStyle = UITextBorderStyle.roundedRect
                }
            })
            } else {
            
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

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
