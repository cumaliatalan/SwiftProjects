//
//  ViewController.swift
//  BasicIOS
//
//  Created by Misafir on 13.07.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var enterPassword: UITextField!
    
    var takePassword = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func checkPush(_ sender: Any) {
        
        takePassword = enterPassword.text!
        
        performSegue(withIdentifier: "toPage2", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toPage2" {
            let destinationVC = segue.destination as! ViewController2
            destinationVC.enterPassword = takePassword
        }
    }

}

