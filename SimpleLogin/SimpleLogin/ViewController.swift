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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func loginAction(_ sender: Any) {
//        let albumStoryboard = UIStoryboard(name: "Album", bundle: nil)
//        let album = albumStoryboard.instantiateViewController(withIdentifier: "AlbumViewController") as! AlbumViewController
//        self.navigationController?.pushViewController(album, animated: true)
        
        let albumStoryboard = UIStoryboard(name: "Admin", bundle: nil)
        let album = albumStoryboard.instantiateViewController(withIdentifier: "AdminViewController") as! AdminViewController
        self.navigationController?.pushViewController(album, animated: true)
    }
    
}

