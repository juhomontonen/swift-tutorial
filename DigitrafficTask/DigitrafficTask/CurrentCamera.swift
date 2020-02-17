//
//  CurrentCamera.swift
//  DigitrafficTask
//
//  Created by Juho Montonen on 14/02/2020.
//  Copyright © 2020 Juho Montonen. All rights reserved.
//

import SwiftUI

struct CurrentCamera: View {
    var camera: Camera?
    var height: CGFloat = 0
    
    var body: some View {
        VStack {
            NavigationView {
                List {
                    if (camera?.cameraStations[0].cameraPresets != nil) {
                        ForEach((camera?.cameraStations[0].cameraPresets)!) { cameraPreset in
                            NavigationLink(destination: CameraPresetView(camPreset: cameraPreset)) {
                                Text(cameraPreset.presentationName)
                            }
                        }
                    }
                }.navigationBarTitle(Text("Kamerat"))
            }
        }
    }
}

struct CurrentCamera_Previews: PreviewProvider {
    static var previews: some View {
        CurrentCamera()
    }
}
