//
//  FeedViewController.swift
//  PhotoShareApp
//
//  Created by Cumali Atalan on 25.08.2022.
//

import UIKit
import Firebase
import SDWebImage

class FeedViewController: UIViewController,
                            UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    /*
    var emailArray = [String]()
    var commentArray = [String]()
    var imageArray = [String]()
    */
    var postArray = [Post]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.
        getDataFromFirebase()
    }
        
    func getDataFromFirebase() {
    
        let firestoreDatabase = Firestore.firestore()
        firestoreDatabase.collection("Post").order(by: "date", descending: true)
        .addSnapshotListener { (snapshot, error) in
            
            if error != nil {
                print(error?.localizedDescription)
            } else {
                if snapshot?.isEmpty != true && snapshot != nil {
                    for document in snapshot!.documents {
                        
                        //self.emailArray.removeAll(keepingCapacity: false)
                        //self.imageArray.removeAll(keepingCapacity: false)
                        //self.commentArray.removeAll(keepingCapacity: false)
                        self.postArray.removeAll(keepingCapacity: false)

                        let documentId = document.documentID
                        if let imageURL = document.get("imageURL") as? String {
                            //self.imageArray.append(imageURL)
                            if let comment = document.get("comment") as? String {
                                //self.commentArray.append(comment)
                                if let email = document.get("email") as? String {
                                    //self.emailArray.append(email)
                                    let post = Post(email: email, comment: comment, imageURL: imageURL)
                                }
                            }
                        }
                    }
                    self.tableView.reloadData()
                }
            }
        }
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return postArray.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! FeedCell
        cell.emailLabel.text = postArray[indexPath.row].email
        cell.commentLabel.text = postArray[indexPath.row].comment
        cell.postImageView.sd_setImage(with: URL(string: self.postArray[indexPath.row].imageURL))
        return cell
    }
    
}
