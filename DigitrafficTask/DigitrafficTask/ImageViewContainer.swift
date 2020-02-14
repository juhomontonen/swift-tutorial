//
//  ImageViewContainer.swift
//  DigitrafficTask
//
//  Created by Juho Montonen on 14/02/2020.
//  Copyright © 2020 Juho Montonen. All rights reserved.
//

import SwiftUI

struct ImageViewContainer: View {
    @ObservedObject var cam = CurrentCamViewModel()
    
    // init(imageUrl: String) {
        
    // }
    
    var body: some View {
        Image(uiImage: UIImage(data: self.cam.current?.cameraStations[0].cameraPresets[0].imageUrl.data) ?? UIImage())
    }
}

class RemoteImageURL: ObservableObject {
    var didChange = PassthroughSubject<Data, Never>()
    var data = Data() {
        didSet {
            didChange.send(data)
        }
    }
    init(imageURL: String) {
        guard let url = URL(string: imageURL) else { return }

        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data else { return }

            DispatchQueue.main.async { self.data = data }

            }.resume()
    }
}

struct ImageViewContainer_Previews: PreviewProvider {
    static var previews: some View {
        ImageViewContainer()
    }
}
