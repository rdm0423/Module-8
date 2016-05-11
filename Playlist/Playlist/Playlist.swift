//
//  Playlist.swift
//  Playlist
//
//  Created by Ross McIlwaine on 5/11/16.
//  Copyright © 2016 Ross McIlwaine. All rights reserved.
//

import Foundation

class Playlist: Equatable {
    
    let title: String
    var songs: [Song]
    
    // adds the "=[]" to create the empty array
    init(title: String, songs: [Song] = []) {
        
        self.title = title
        self.songs = songs
    }
}

func ==(lhs: Playlist, rhs: Playlist) -> Bool {
    return lhs.title == rhs.title && lhs.songs == rhs.songs
}