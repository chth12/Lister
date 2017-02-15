//
//  EmptyEmailMessageVC.swift
//  Lister
//
//  Created by Christopher Heins on 2/14/17.
//  Copyright © 2017 Christopher Todd Heins. All rights reserved.
//

import UIKit

class EmptyEmailMessageVC: UIViewController {
    
    @IBOutlet weak var message: UILabel!
    var empty: String = ""
    override func viewDidLoad() {
        message.text = empty
        super.viewDidLoad()
        
    }
}
