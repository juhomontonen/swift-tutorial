//
//  ImageView.swift
//  DigitrafficTask
//
//  Created by Juho Montonen on 14/02/2020.
//  Copyright © 2020 Juho Montonen. All rights reserved.
//

import SwiftUI

struct ImageView: View {
    @ObservedObject var imageLoader: ImageLoader
    @State var image: UIImage = UIImage()
    
    init(withURL url: String) {
        imageLoader = ImageLoader(urlString: url)
    }
    
    var body: some View {
        VStack {
            Image(uiImage: imageLoader.data != nil ? UIImage(data:imageLoader.data!)! : UIImage())
                .resizable()
                .aspectRatio(contentMode: .fill)
            }
    }
}
