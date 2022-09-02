//
//  ViewController2.swift
//  BasicIOS
//
//  Created by Misafir on 13.07.2022.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var page2Label: UILabel!
    
    @IBOutlet weak var passwordLabel: UILabel!
    var enterPassword = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        passwordLabel.text = enterPassword
    }
    
}
