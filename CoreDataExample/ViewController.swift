//
//  ViewController.swift
//  CoreDataExample
//
//  Created by Alexander Yakovenko on 12/23/17.
//  Copyright © 2017 Alexander Yakovenko. All rights reserved.
//

import UIKit
import CoreData


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let context = CoreDataManager.instance.managedObjectContext
        
         // Описание сущности
        let entityDescription = NSEntityDescription.entity(forEntityName: "Customer", in: context)
         
         // Создание нового объекта
        let managedObject = Customer(entity: entityDescription!, insertInto: context)
         
         // Установка значения атрибута
         managedObject.name = "ООО «Василек»"
        
        // Запись объекта
        do {
            try context.save()
        } catch {
            print(error)
        }
        
         
         // Извлечение значения атрибута
         let name = managedObject.name
        print("name = \(String(describing: name))")
         
        
        
        
        
        
       
    }
}

