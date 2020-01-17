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
        VStack {
            MapView()
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)

            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)

            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                HStack(alignment: .top) {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    Spacer()
                    Text("California")
                        .font(.subheadline)
                }
            }
            .padding()

            Spacer()
        }
    }
}

struct RoomDetail_Previews: PreviewProvider {
    static var previews: some View {
    RoomDetail(room: testData[1])
    }
}
