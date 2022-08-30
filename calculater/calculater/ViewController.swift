//
//  ViewController.swift
//  calculater
//
//  Created by Cumali Atalan on 5.07.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var number1: UITextField!
    
    @IBOutlet weak var number2: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    var result = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
        
    }

    @IBAction func plus(_ sender: Any) {
        if let firstNum = Int(number1.text!){
            if let secondNum = Int(number2.text!){
                result = firstNum + secondNum
                resultLabel.text = String(result)
            }
        }
    }
    
    @IBAction func minus(_ sender: Any) {
        if let firstNum = Int(number1.text!){
            if let secondNum = Int(number2.text!){
                result = firstNum - secondNum
                resultLabel.text = String(result)
            }
        }
    }
    
    @IBAction func multiplicate(_ sender: Any) {
        if let firstNum = Int(number1.text!){
            if let secondNum = Int(number2.text!){
                result = firstNum * secondNum
                resultLabel.text = String(result)
            }
        }
    }
    
    @IBAction func slash(_ sender: Any) {
        if let firstNum = Int(number1.text!){
            if let secondNum = Int(number2.text!){
                result = firstNum / secondNum
                resultLabel.text = String(result)
            }
        }
    }
    
    
}
