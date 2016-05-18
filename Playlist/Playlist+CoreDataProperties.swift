//
//  Playlist+CoreDataProperties.swift
//  Playlist
//
//  Created by Ross McIlwaine on 5/18/16.
//  Copyright © 2016 Ross McIlwaine. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Playlist {

    @NSManaged var name: String
    @NSManaged var songs: NSOrderedSet

}
