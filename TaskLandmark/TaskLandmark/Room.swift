//
//  Room.swift
//  TaskLandmark
//
//  Created by Juho Montonen on 10/01/2020.
//  Copyright © 2020 Juho Montonen. All rights reserved.
//

import SwiftUI

struct Room : Identifiable {
    var id = UUID()
    var name: String
    var capacity: Int
    var hasVideo: Bool = false
    
    var imageName: String { return name }
    var thumbnailName: String { return name + "Thumb" }
}

#if DEBUG
let testData = [
    Room(name: "Observation Deck", capacity: 6, hasVideo: true),
    Room(name: "Huone 2", capacity: 7, hasVideo: false),
    Room(name: "Huone 3", capacity: 77, hasVideo: true),
    Room(name: "Observation Deck 4", capacity: 432, hasVideo: false)
]
#endif
