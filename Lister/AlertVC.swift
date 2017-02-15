//
//  alertVC.swift
//  Lister
//
//  Created by Christopher Heins on 2/15/17.
//  Copyright © 2017 Christopher Todd Heins. All rights reserved.
//

import UIKit

class AlertVC: UIViewController {

    func alert(message: String) {
    
        let alertController = UIAlertController(title: "", message: message, preferredStyle: .alert)
        let OKaction = UIAlertAction(title: "OK", style: .default, handler: { (action) in
            self.dismiss(animated: true, completion: nil)
        })
        alertController.addAction(OKaction)
        present(alertController, animated: true, completion: nil)
    }

}
