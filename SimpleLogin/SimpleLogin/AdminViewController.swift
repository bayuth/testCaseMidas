//
//  AdminViewController.swift
//  SimpleLogin
//
//  Created by Bayu Triharyanto on 26/01/22.
//

import Foundation
import UIKit
import CoreData

class AdminViewController: UIViewController {
    
    @IBOutlet weak var userTableView: UITableView!
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    var result: [UserTable] = []
    let coredataManager = CoreDataManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        userTableView.delegate = self
        userTableView.dataSource = self
        
        let nib = UINib(nibName: "UserTableViewCell", bundle: nil)
        userTableView.register(nib, forCellReuseIdentifier: "UserTableViewCell")
        fetchUser()
//        coredataManager.addUser(id: 1, username: "joe", password: "12345", email: "joe@gmail.com", role: "user")
    }
    
    func fetchUser(){
        do{
            self.result = try context.fetch(UserTable.fetchRequest())
            DispatchQueue.main.async {
                self.userTableView.reloadData()
            }
        }
        catch{
            
        }
        
    }
    
}

extension AdminViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return result.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UserTableViewCell", for: indexPath) as! UserTableViewCell
        cell.userNameLabel.text = result[indexPath.row].username
        return cell
    }
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath){
        self.coredataManager.deleteUser(currentUser: result[indexPath.row])
    }
    
    
}
