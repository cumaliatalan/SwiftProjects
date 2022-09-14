//
//  ViewController.swift
//  GestureRecognizes
//
//  Created by Misafir on 17.07.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var cityLabel: UILabel!
    
    var istanbul = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.isUserInteractionEnabled = true
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changeView))
     
        imageView.addGestureRecognizer(gestureRecognizer)
    }
    
    @objc func changeView() {
        
        
        if istanbul == false {
            imageView.image = UIImage(named: "istanbul")
            cityLabel.text = "İstanbul"
            istanbul = true
        } else {
            imageView.image = UIImage(named: "malatya")
            cityLabel.text = "Malatya"
            istanbul = false
        }
    }
}

