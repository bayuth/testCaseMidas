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
    var user:[UserTable]?
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    func addUser(id: Int, username: String?, password: String?, email: String?, role: String, isLogin: Bool){
        let newUser = UserTable(context: self.context)
        newUser.id = Int64(id)
        newUser.username = username
        newUser.password = password
        newUser.email = email
        newUser.role = role
        newUser.isLogin = isLogin
        save()
    }
    
    func fetchUser(){
        do{
            self.user = try context.fetch(UserTable.fetchRequest())
        }
        catch{
            
        }
        
    }

    
    func save(){
        do{
            try self.context.save()
            print("tersimpan")
        }
        catch{
            
        }
    }
    
    func updateFurniture(currenUser: UserTable, username: String?, password: String?, email: String?, role: String){
        currenUser.username = username
        currenUser.password = password
        currenUser.email = email
        currenUser.role = role
        save()
    }
    
    func deleteUser(currentUser: UserTable){
        self.context.delete(currentUser)
        save()
    }
}
