//
//  PlaylistController.swift
//  Playlist
//
//  Created by Ross McIlwaine on 5/11/16.
//  Copyright © 2016 Ross McIlwaine. All rights reserved.
//

import Foundation

class PlaylistController {
    
    private let kPlaylists = "storedPlaylists"
    
    // static (Singleton) allows for using PlaylistController outside of the class globally
    static let sharedController = PlaylistController()
    
    var playlists: [Playlist] = []
    
    init() {
        loadFromPersistentStorage()
    }
    
    func addPlaylist(name: String) {
        
        let playlist = Playlist(title: name)
        playlists.append(playlist)
        
        saveToPersistentStorage()
    }
    
    func removePlaylist(playlist: Playlist) {
        
        if let playlistIndex = playlists.indexOf(playlist) {
            playlists.removeAtIndex(playlistIndex)
            saveToPersistentStorage()
        }
    }
    
    func addSongToPlaylist(song: Song, playlist: Playlist) {
        
        playlist.songs.append(song)
        saveToPersistentStorage()
    }
    
    func removeSongFromPlaylist(song: Song, playlist: Playlist) {
        
//        if let songIndex = playlists.indexOf(song) {
//            playlist.removeAtIndex(playlistIndex)
//            saveToPersistentStorage()
//        }
    }
    
    func saveToPersistentStorage() {
        
        NSUserDefaults.standardUserDefaults().setObject(playlists.map{$0.dictionaryCopy}, forKey: kPlaylists)
    }
    
    func loadFromPersistentStorage() {
        
        guard let playlistsDictionaryArray = NSUserDefaults.standardUserDefaults().objectForKey(kPlaylists) as? [[String:AnyObject]] else {
            
            return
        }
        playlists = playlistsDictionaryArray.flatMap{Playlist(dictionary: $0)}
    }
    

}