//
//  RoomDetail.swift
//  TaskLandmark
//
//  Created by Juho Montonen on 13/01/2020.
//  Copyright © 2020 Juho Montonen. All rights reserved.
//

import SwiftUI

struct RoomDetail: View {
    let room: Room
    
    var body: some View {
        Text(room.name)
    }
}

struct RoomDetail_Previews: PreviewProvider {
    static var previews: some View {
        RoomDetail(room: testData[1])
    }
}
