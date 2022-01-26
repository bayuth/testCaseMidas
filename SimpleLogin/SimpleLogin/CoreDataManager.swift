//
//  CoreDataManager.swift
//  SimpleLogin
//
//  Created by Bayu Triharyanto on 26/01/22.
//

import Foundation
import CoreData
import UIKit

class CoreDataManager{
    var space:[UserTable]?
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    func addUser(id: Int, username: String?, password: String?, email: String?, role: String){
        let newUser = UserTable(context: self.context)
        newUser.id = Int64(id)
        newUser.username = username
        newUser.password = password
        newUser.email = email
        newUser.role = role
        save()
    }
    
    func save(){
        do{
            try self.context.save()
            print("tersimpan")
        }
        catch{
            
        }
    }
}
