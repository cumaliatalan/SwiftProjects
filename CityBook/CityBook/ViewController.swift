//
//  ViewController.swift
//  CityBook
//
//  Created by Misafir on 21.07.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var cityArray = [City]()
    var userChooseCity : City?
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
    
        let istanbul = City(name: "İstanbul", region: "Marmara", image: UIImage(named: "istanbul")!)
        let ankara = City(name: "Ankara", region: "İç Anadolu", image: UIImage(named: "ankara")!)
        let izmir = City(name: "İzmir", region: "Ege", image: UIImage(named: "izmir")!)
        let antalya = City(name: "Antalya", region: "Akdeniz", image: UIImage(named: "antalya")!)
        let malatya = City(name: "Malatya", region: "Doğu Anadolu", image: UIImage(named: "malatya")!)
        
        cityArray = [istanbul, ankara, izmir, antalya, malatya]
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cityArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = cityArray[indexPath.row].name
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        userChooseCity = cityArray[indexPath.row]
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! DetailsViewController
            destinationVC.chooseCity = userChooseCity
        }
    }
}
