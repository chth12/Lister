//
//  popEmailEmptyXibVC.swift
//  Lister
//
//  Created by Christopher Heins on 2/13/17.
//  Copyright © 2017 Christopher Todd Heins. All rights reserved.
//

import UIKit

class popEmailEmptyXibVC: UIViewController {

    @IBOutlet weak var errorField: UITextField!
    public var error = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        errorField.text! = error
    }
}
