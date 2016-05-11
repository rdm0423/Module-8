//
//  Song.swift
//  Playlist
//
//  Created by Ross McIlwaine on 5/11/16.
//  Copyright © 2016 Ross McIlwaine. All rights reserved.
//

import Foundation

class Song: Equatable {
    
    let name: String
    let artist: String
    
    init(name: String, artist: String) {
        self.name = name
        self.artist = artist
    }
}

func ==(lhs: Song, rhs: Song) -> Bool {
    
    return lhs.name == rhs.name && lhs.artist == rhs.artist
}