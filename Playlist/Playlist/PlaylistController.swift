//
//  PlaylistController.swift
//  Playlist
//
//  Created by Ross McIlwaine on 5/11/16.
//  Copyright © 2016 Ross McIlwaine. All rights reserved.
//

import Foundation
import CoreData

class PlaylistController {
    
    // static (Singleton) allows for using PlaylistController outside of the class globally
    static let sharedController = PlaylistController()
    
    var playlists: [Playlist] {
        
        let request = NSFetchRequest(entityName: "Playlist")
        
        let managedObjectContext = Stack.sharedStack.managedObjectContext
        
        return (try? managedObjectContext.executeFetchRequest(request)) as? [Playlist] ?? []
        
//        do {
//            return try managedObjectContext.executeFetchRequest(request) as! [Playlist]
//        } catch {
//            return []
//        }
    }
    
    func addPlaylist(name: String) {
        
       let _ = Playlist(name: name)
        saveToPersistentStorage()
    }
    
    func removePlaylist(playlist: Playlist) {
        
        if let modelObjectContext = playlist.managedObjectContext {
            modelObjectContext.deleteObject(playlist)
            saveToPersistentStorage()
        }
    }
    
    func saveToPersistentStorage() {
        
        let managedObjectContext = Stack.sharedStack.managedObjectContext
        
        do {
            try managedObjectContext.save()
        } catch {
            print("ERROR SAVING")
        }
    }
    
    
}






