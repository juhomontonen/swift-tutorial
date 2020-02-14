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
            Text("Noniin \(camera?.dataUpdatedTime ?? "Unknown")")
            ImageView(withURL: camera?.cameraStations[0].cameraPresets[0].imageUrl ?? "asd")
            Text("\(camera?.cameraStations.description ?? "ASD")")
        }
    }
}

struct CurrentCamera_Previews: PreviewProvider {
    static var previews: some View {
        CurrentCamera()
    }
}
