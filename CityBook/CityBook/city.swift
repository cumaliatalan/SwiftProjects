//
//  City.swift
//  CityBook
//
//  Created by Misafir on 21.07.2022.
//

import Foundation
import UIKit

class City {
    
    var name : String
    var region : String
    var image : UIImage
    
    init(name : String, region : String, image : UIImage) {
        self.name = name
        self.region = region
        self.image = image
    }
}
