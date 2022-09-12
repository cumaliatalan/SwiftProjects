//
//  DetailsViewController.swift
//  CityBook
//
//  Created by Misafir on 21.07.2022.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var regionLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    
    var chooseCity : City?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cityLabel.text = chooseCity?.name
        regionLabel.text = chooseCity?.region
        imageView.image = chooseCity?.image
    
    }
}
