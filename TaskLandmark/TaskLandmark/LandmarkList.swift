//
//  LandmarkList.swift
//  TaskLandmark
//
//  Created by Juho Montonen on 17/01/2020.
//  Copyright © 2020 Juho Montonen. All rights reserved.
//

import SwiftUI


struct LandmarkList: View {
    @State var showFavoritesOnly = true

    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }

                ForEach(landmarkData) { landmark in
                    if !self.showFavoritesOnly || landmark.isFavorite {
                        NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                            LandmarkRow(landmark: landmark)
                        }
                    }
                }
            }
            .navigationBarTitle(Text("Landmarks"))
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
