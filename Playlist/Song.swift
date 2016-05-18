//
//  Song.swift
//  Playlist
//
//  Created by Ross McIlwaine on 5/18/16.
//  Copyright © 2016 Ross McIlwaine. All rights reserved.
//

import Foundation
import CoreData


class Song: NSManagedObject {

// Insert code here to add functionality to your managed object subclass

    // MARK: Convenience Initializer
    convenience init?(title: String, artist: String, playlist: Playlist, context: NSManagedObjectContext = Stack.sharedStack.managedObjectContext) {
        
        guard let entity = NSEntityDescription.entityForName("Song", inManagedObjectContext: context) else {
            return nil
        }
        self.init(entity: entity,  insertIntoManagedObjectContext: context)
        
        self.title = title
        self.artist = artist
        self.playlist = playlist
    }
}
