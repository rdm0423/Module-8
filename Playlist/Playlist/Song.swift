//
//  Song.swift
//  Playlist
//
//  Created by Ross McIlwaine on 5/11/16.
//  Copyright © 2016 Ross McIlwaine. All rights reserved.
//

import Foundation

class Song: Equatable {
    
    private let kName = "name"
    private let kArtist = "artist"
    
    let name: String
    let artist: String
    
    init(name: String, artist: String) {
        self.name = name
        self.artist = artist
    }
    
    // Computed Property
    var dictionaryCopy: [String:AnyObject] {
        
        return [kName: name, kArtist: artist]
    }
    
    init?(dictionary : [String:AnyObject]) {
        
        guard let name = dictionary[kName] as? String,
            artist = dictionary[kArtist] as? String else {
                
                return nil
        }
        self.name = name
        self.artist = artist
    }
}

func ==(lhs: Song, rhs: Song) -> Bool {
    
    return lhs.name == rhs.name && lhs.artist == rhs.artist
}