//
//  CameraPresetView.swift
//  DigitrafficTask
//
//  Created by Juho Montonen on 17/02/2020.
//  Copyright © 2020 Juho Montonen. All rights reserved.
//

import SwiftUI

struct CameraPresetView: View {
    var camPreset: CameraPresets
    
    var body: some View {
        VStack {
            Text(camPreset.presentationName)
            ImageView(withURL: camPreset.imageUrl)
        }
    }
}

/*
struct CameraPresetView_Previews: PreviewProvider {
    static var previews: some View {
        CameraPresetView()
    }
}
*/
