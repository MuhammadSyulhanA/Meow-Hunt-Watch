//
//  PersistentController.swift
//  Meow Hunt Watch WatchKit Extension
//
//  Created by M. Syulhan Al Ghofany on 22/07/22.
//

import CoreData

struct PersistentController {
    
    static let shared = PersistentController()
    
    let container: NSPersistentContainer
    
    init(inMemory: Bool = false) {
        container = NSPersistentContainer(name: "DataHunter")
        if inMemory {
            container.persistentStoreDescriptions.first!.url = URL (fileURLWithPath: "/dev/null")
        }
        
        container.loadPersistentStores { (storeDesc, error) in
            if let error = error as NSError?{
                fatalError("Failed to load container \(error)")
            }
        }
    }
    
    
}
