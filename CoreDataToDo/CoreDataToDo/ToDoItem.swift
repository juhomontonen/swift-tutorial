//
//  ToDoItem.swift
//  CoreDataToDo
//
//  Created by Juho Montonen on 31/01/2020.
//  Copyright © 2020 Juho Montonen. All rights reserved.
//

import Foundation
import CoreData

public class ToDoItem: NSManagedObject, Identifiable {
    @NSManaged public var createdAt:Date?
    @NSManaged public var title:String?
}

extension ToDoItem {
    static func getAllToDoItems() -> NSFetchRequest<ToDoItem> {
        let request:NSFetchRequest<ToDoItem> = ToDoItem.fetchRequest() as! NSFetchRequest<ToDoItem>
        
        let sortDescriptor = NSSortDescriptor(key: "createdAt", ascending: true)
        
        request.sortDescriptors = [sortDescriptor]
        
        return request
    }
}
