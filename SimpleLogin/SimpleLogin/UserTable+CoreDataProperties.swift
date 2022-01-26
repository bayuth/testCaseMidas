//
//  UserTable+CoreDataProperties.swift
//  SimpleLogin
//
//  Created by Bayu Triharyanto on 26/01/22.
//
//

import Foundation
import CoreData


extension UserTable {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<UserTable> {
        return NSFetchRequest<UserTable>(entityName: "UserTable")
    }

    @NSManaged public var username: String?
    @NSManaged public var password: String?
    @NSManaged public var role: String?
    @NSManaged public var isLogin: Bool
    @NSManaged public var email: String?
    @NSManaged public var id: Int64

}

extension UserTable : Identifiable {

}
