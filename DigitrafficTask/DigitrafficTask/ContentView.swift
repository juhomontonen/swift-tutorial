//
//  ContentView.swift
//  DigitrafficTask
//
//  Created by Juho Montonen on 10/02/2020.
//  Copyright © 2020 Juho Montonen. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var selected = 0
    @ObservedObject var cam = CurrentCamViewModel()
    @State var id: String = ""
    
    init() {
        WebService().get(by: "C01503") {
            print($0)
        }
    }
    
    var body: some View {
        /*
        NavigationView {
            List {
                EmptyView()
            }.navigationBarTitle(Text("Kamerapisteet"))
        }
        */
        
        VStack{
            TextField("Syötä id", text: $id){
                self.cam.fetch(self.id)
            }
            CurrentCamera(camera: self.cam.current)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
