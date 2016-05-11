//
//  PlaylistController.swift
//  Playlist
//
//  Created by Ross McIlwaine on 5/11/16.
//  Copyright © 2016 Ross McIlwaine. All rights reserved.
//

import Foundation

class PlaylistController {
    
    // static (Singleton) allows for using PlaylistController outside of the class globally
    static let sharedController = PlaylistController()
    
    var playlists: [Playlist] = []
    
    func addPlaylist(name: String) {
        
        let playlist = Playlist(title: name)
        playlists.append(playlist)
    }
    
    func removePlaylist(playlist: Playlist) {
        
        
    }
    
    func addSongToPlaylist(song: Song, playlist: Playlist) {
        
        playlist.songs.append(song)
    }
    
    func removeSongFromPlaylist(song: Song, playlist: Playlist) {
        
        
    }
    
    func mocData() -> [Playlist] {
        
        let playlist1 = Playlist(title: "One")
        let playlist2 = Playlist(title: "Two")
        let playlist3 = Playlist(title: "Three")
        
        return [playlist1, playlist2, playlist3]
    }
}