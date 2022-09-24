//
//  ViewController.swift
//  SuperHeroBook
//
//  Created by Misafir on 20.07.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!
    var superHeroName = [String]()
    var superHeroImageName = [String]()
    var chooseName = ""
    var chooseImage = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        superHeroName.append("Batman")
        superHeroName.append("Superman")
        superHeroName.append("Iron Man")
        superHeroName.append("Spiderman")
        superHeroName.append("Captain America")
        superHeroName.append("Hulk")
        
        // var superHeroImage = [UIImage]()
        // superHeroImage.append(UIImage(named: "batman")!)
        
        superHeroImageName.append("batman")
        superHeroImageName.append("superman")
        superHeroImageName.append("ironman")
        superHeroImageName.append("spiderman")
        superHeroImageName.append("captainamerica")
        superHeroImageName.append("hulk")
    }

    // numberOfRowsInSection --> kaç tane row olacak
    // cellForRow atIndexPath --> hücrenin içerisinde neler gösterilecek
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return superHeroName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = superHeroName[indexPath.row]
        
        return cell
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            superHeroName.remove(at: indexPath.row)
            superHeroImageName.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chooseName = superHeroName[indexPath.row]
        chooseImage = superHeroImageName[indexPath.row]
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! DetailsViewController
            destinationVC.chooseSuperHeroName = chooseName
            destinationVC.chooseSuperHeroImageName = chooseImage
        }
    }
        
}
