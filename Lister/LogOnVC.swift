//
//  LogOnVC.swift
//  Lister
//
//  Created by Christopher Heins on 1/10/17.
//  Copyright © 2017 Christopher Todd Heins. All rights reserved.
//

import UIKit

class LogOnVC: UIViewController {
    
    let defaults = UserDefaults.standard
    
    @IBAction func unwindtoLogOnVC(unwind: UIStoryboardSegue) {
   
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
            }

}

extension UIViewController {
    
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    func alert(message: String) {
        
        let alertController = UIAlertController(title: "", message: message, preferredStyle: .alert)
        let OKaction = UIAlertAction(title: "OK", style: .default, handler: { (action) in
            self.dismiss(animated: true, completion: nil)
        })
        alertController.addAction(OKaction)
        present(alertController, animated: true, completion: nil)
    }

    func dismissKeyboard() {
        view.endEditing(true)
    }
    
}
