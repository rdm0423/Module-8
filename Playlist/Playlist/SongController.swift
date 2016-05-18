//
//  SongController.swift
//  Playlist
//
//  Created by Ross McIlwaine on 5/11/16.
//  Copyright © 2016 Ross McIlwaine. All rights reserved.
//

import Foundation

class SongController {
    
    static func createSong(title: String, artist: String, playlist: Playlist) {
        _ = Song(title: title, artist: artist, playlist: playlist)
        PlaylistController.sharedController.saveToPersistentStorage()
    }
    
    static func deleteSong(song: Song) {
        
        if let modelObjectContext = song.managedObjectContext {
            modelObjectContext.deleteObject(song)
            PlaylistController.sharedController.saveToPersistentStorage()
        }
    }
}