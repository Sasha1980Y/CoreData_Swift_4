//
//  Customer+CoreDataClass.swift
//  CoreDataExample
//
//  Created by Alexander Yakovenko on 12/23/17.
//  Copyright © 2017 Alexander Yakovenko. All rights reserved.
//
//

import Foundation
import CoreData

@objc(Customer)
public class Customer: NSManagedObject {
    
    convenience init() {
        self.init(entity: CoreDataManager.instance.entityForName(entityName: "Customer"), insertInto: CoreDataManager.instance.managedObjectContext)
    }
    
    
}
