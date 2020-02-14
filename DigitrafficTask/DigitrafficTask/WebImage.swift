//
//  WebImage.swift
//  DigitrafficTask
//
//  Created by Juho Montonen on 14/02/2020.
//  Copyright © 2020 Juho Montonen. All rights reserved.
//

import SwiftUI

struct WebImage: View {

    @ObjectBinding let imageLoader: ImageLoader
    
    init(imageLoader: ImageLoader) {
        self.imageLoader = imageLoader
    }
    
    var body: some View {
        Image(uiImage: imageLoader.image(for: 'asddas'))
    }
}

struct WebImage_Previews: PreviewProvider {
    static var previews: some View {
        WebImage()
    }
}
