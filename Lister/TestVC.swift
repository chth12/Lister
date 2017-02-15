//
//  RegisterUerVC.swift
//  Lister
//
//  Created by Christopher Heins on 2/10/17.
//  Copyright © 2017 Christopher Todd Heins. All rights reserved.
//

import UIKit
import FirebaseAuth


class TestVC: UIViewController, UIPopoverPresentationControllerDelegate {
    
    
    @IBOutlet weak var showOut: UIButton!
    @IBAction func show(_ sender: UIButton) {
    
   
            performSegue(withIdentifier: "toTestpop", sender: self)
    
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! EmptyEmailMessageVC
        let controller = vc.popoverPresentationController
        //controller?.permittedArrowDirections = .down
        //vc.preferredContentSize = CGSize(width: 200.00, height: 100.00)
        //controller?.sourceRect = vc.view.bounds
        //controller?.sourceView = vc.view
        controller!.delegate = self
        let empty : String = "An e-mail address is required"
         vc.empty = empty

//        if controller != nil {
//                controller?.delegate = self
//                            }
//        
        
        func adaptivePresentationStyle(for controller: UIPresentationController) -> UIModalPresentationStyle {
            return .none
        }
    }
    
}
