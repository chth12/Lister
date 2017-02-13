//
//  ViewControllerExtensions.swift
//  Lister
//
//  Created by Christopher Heins on 2/12/17.
//  Copyright © 2017 Christopher Todd Heins. All rights reserved.
//

class ViewControllerExtensions: UIViewController {
    
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
