//
//  Playlist.swift
//  Playlist
//
//  Created by Ross McIlwaine on 5/18/16.
//  Copyright © 2016 Ross McIlwaine. All rights reserved.
//

import Foundation
import CoreData


class Playlist: NSManagedObject {

// Insert code here to add functionality to your managed object subclass
    
    // MARK: Convenience Initializer
    convenience init?(name: String, context: NSManagedObjectContext = Stack.sharedStack.managedObjectContext) {
        
        guard let entity = NSEntityDescription.entityForName("Playlist", inManagedObjectContext: context) else {
            return nil
        }
        self.init(entity: entity, insertIntoManagedObjectContext: context)
        
        self.name = name
    }
}
