//
//  CurrentWeather.swift
//  WeatherApp
//
//  Created by Juho Montonen on 20/01/2020.
//  Copyright © 2020 Juho Montonen. All rights reserved.
//

import SwiftUI

struct CurrentWeather: View {
    var weather: Weather?
    var height: CGFloat = 0
    
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            Text("Today in \(weather?.name ?? "Unknown")")
            .font(.title)
            .foregroundColor(.white)
            .bold()
            HStack{
                Text("\(weather?.main.temp.round ?? 0) °C")
                    .foregroundColor(.white)
                    .fontWeight(Font.Weight.heavy)
                    .font(.system(size: 65))
                Image("01d")
            }
            Text("\(weather?.weather.last?.description ?? "Unknown")")
                .foregroundColor(.white)
                .font(.body)
            Text("\(weather?.main.tempMax.round ?? 0)")
                .foregroundColor(.white)
                .font(.body)
        }.frame(width: height, height: height)
            .background(Image("circle-blues")
                .resizable(resizingMode: .tile))
    }
}

struct CurrentWeather_Previews: PreviewProvider {
    static var previews: some View {
        CurrentWeather()
    }
}
