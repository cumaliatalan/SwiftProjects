//
//  ViewController.swift
//  AlertMessage
//
//  Created by Misafir on 17.07.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var passwordAgainTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func signUpButton(_ sender: Any) {
        if emailTextField.text == ""{
            alertCreate(titleInput: "Hata!", messageInput: "Email Girilmedi")
            //email bos
        }else if passwordTextField.text == ""{
            alertCreate(titleInput: "Hata!", messageInput: "Parola Girilmedi")
            //parola bos
        }else if passwordTextField.text != passwordAgainTextField.text {
            //parolalar uyusmuyor
            alertCreate(titleInput: "Hata!", messageInput: "Parolalar Uyuşmuyor")
        }else {
            alertCreate(titleInput: "Tebrikler!", messageInput: "Kullanıcı Oluşturuldu!")
            //basarili
        }
    }
    
    func alertCreate(titleInput : String, messageInput : String) {
        
        let alertMessage = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { UIAlertAction in
            print("ok button tıklandı")
        }
        
        alertMessage.addAction(okButton)
        
        self.present(alertMessage, animated: true, completion: nil)
    }

}
