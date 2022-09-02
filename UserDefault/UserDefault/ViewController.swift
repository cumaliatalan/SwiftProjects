//
//  ViewController.swift
//  UserDefault
//
//  Created by Misafir on 17.07.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var noteTextField: UITextField!
    @IBOutlet weak var whenTextField: UITextField!
    @IBOutlet weak var whenLabel: UILabel!
    @IBOutlet weak var notLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let saveNote = UserDefaults.standard.object(forKey: "note")
        let saveWhen = UserDefaults.standard.object(forKey: "when")
        
        if let gelenNote = saveNote as? String {
            notLabel.text = "Note: \(gelenNote)"
        }
        
        if let gelenWhen = saveWhen as? String {
            whenLabel.text = "When: \(gelenWhen)"
        }
    }

    @IBAction func saveButton(_ sender: Any) {
        
        UserDefaults.standard.set(noteTextField.text!, forKey: "note")
        UserDefaults.standard.set(whenTextField.text!, forKey: "when")
        
        notLabel.text = noteTextField.text!
        whenLabel.text = whenTextField.text!
        
    }
    
    @IBAction func deleteButton(_ sender: Any) {
        
        let saveNote = UserDefaults.standard.removeObject(forKey: "note")
        let saveWhen = UserDefaults.standard.removeObject(forKey: "when")
        
        if (saveNote as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "note")
            notLabel.text = "Note: "
        }
        
        if (saveWhen as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "when")
            whenLabel.text = "When: "
        }
        
    }
}

