//
//  LogOnVC.swift
//  Lister
//
//  Created by Christopher Heins on 1/10/17.
//  Copyright © 2017 Christopher Todd Heins. All rights reserved.
//

import UIKit

class LogOnVC: UIViewController {

    @IBAction func unwindtoLogOnVC(unwind: UIStoryboardSegue) {
        //TODO get user log on information
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}
extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    func dismissKeyboard() {
        view.endEditing(true)
    }
}
