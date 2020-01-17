//
//  ContentView.swift
//  TaskLandmark
//
//  Created by Juho Montonen on 10/01/2020.
//  Copyright © 2020 Juho Montonen. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let rooms = [
        Room(name: "Rainbowlake", capacity: 6, hasVideo: true),
        Room(name: "Icybay", capacity: 7, hasVideo: false),
        Room(name: "Turtlerock", capacity: 77, hasVideo: true),
        Room(name: "Observation Deck 4", capacity: 432, hasVideo: false),
        Room(name: "Phrasely pikkujoulut", capacity: 10000, hasVideo: true),
        Room(name: "LocalApp pikkujoulut", capacity: 2, hasVideo: false)
    ]
    
    
    var body: some View {
        NavigationView {
        List(rooms) { room in
            NavigationLink(destination: RoomDetail(room: room)) {
                Image(systemName: "heart.fill")
                
                VStack(alignment: .leading) {
                    Text(room.name)
                    Text("\(room.capacity) people")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
            }
        }
        .navigationBarTitle(Text("Landmarks"))
    }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
