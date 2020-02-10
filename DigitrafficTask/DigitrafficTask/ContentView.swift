//
//  ContentView.swift
//  DigitrafficTask
//
//  Created by Juho Montonen on 10/02/2020.
//  Copyright © 2020 Juho Montonen. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var camera = CurrentCamViewModel()
    
    var body: some View {
        Text("\(camera.current?.dataUpdatedTime ?? "unknown")")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
