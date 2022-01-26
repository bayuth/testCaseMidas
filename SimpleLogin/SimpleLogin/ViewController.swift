//
//  ViewController.swift
//  SimpleLogin
//
//  Created by Bayu Triharyanto on 26/01/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    let coredataManager = CoreDataManager()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        coredataManager.addUser(id: 1, username: "joe", password: "12345", email: "joe@gmail.com", role: "user")
//        coredataManager.addUser(id: 2, username: "max", password: "12345", email: "max@gmail.com", role: "user")
    }

    @IBAction func loginAction(_ sender: Any) {
        var user : String = ""
//        for i in coredataManager.user.count{
//            
//        }
        let albumStoryboard = UIStoryboard(name: "Album", bundle: nil)
        let album = albumStoryboard.instantiateViewController(withIdentifier: "AlbumViewController") as! AlbumViewController
        self.navigationController?.pushViewController(album, animated: true)
        
//        let albumStoryboard = UIStoryboard(name: "Admin", bundle: nil)
//        let album = albumStoryboard.instantiateViewController(withIdentifier: "AdminViewController") as! AdminViewController
//        self.navigationController?.pushViewController(album, animated: true)
    }
    @IBAction func registerButton(_ sender: Any) {
        let albumStoryboard = UIStoryboard(name: "Album", bundle: nil)
        let album = albumStoryboard.instantiateViewController(withIdentifier: "AlbumViewController") as! AlbumViewController
        self.navigationController?.pushViewController(album, animated: true)
        coredataManager.addUser(id: 1, username: "usernameTF", password: "passwordTF", email: "joe@gmail.com", role: "user", isLogin: true)
    }
    @IBAction func adminBtn(_ sender: Any) {
        let albumStoryboard = UIStoryboard(name: "Admin", bundle: nil)
        let album = albumStoryboard.instantiateViewController(withIdentifier: "AdminViewController") as! AdminViewController
        self.navigationController?.pushViewController(album, animated: true)
    }
    
}

