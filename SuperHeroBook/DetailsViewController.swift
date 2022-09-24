//
//  DetailsViewController.swift
//  SuperHeroBook
//
//  Created by Misafir on 20.07.2022.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    var chooseSuperHeroName = ""
    var chooseSuperHeroImageName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.image = UIImage(named: chooseSuperHeroImageName)
        label.text = chooseSuperHeroName
    }
    
}
