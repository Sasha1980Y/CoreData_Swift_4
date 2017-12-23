//
//  Order+CoreDataProperties.swift
//  CoreDataExample
//
//  Created by Alexander Yakovenko on 12/23/17.
//  Copyright © 2017 Alexander Yakovenko. All rights reserved.
//
//

import Foundation
import CoreData


extension Order {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Order> {
        return NSFetchRequest<Order>(entityName: "Order")
    }

    @NSManaged public var date: NSDate?
    @NSManaged public var made: Bool
    @NSManaged public var paid: Bool
    @NSManaged public var customer: Customer?
    @NSManaged public var rowsOfOrder: RowOfOrder?

}
