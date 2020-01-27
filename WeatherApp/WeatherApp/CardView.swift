//
//  CardView.swift
//  WeatherApp
//
//  Created by Juho Montonen on 20/01/2020.
//  Copyright © 2020 Juho Montonen. All rights reserved.
//

import SwiftUI

struct CardView: View {
    var list: ListData

    var body: some View {
        VStack{
            Text(dayOfTheWeekFromTimestamp(list.dt.timestamp))
                .font(.title)
                .foregroundColor(.white)
            HStack{
                Text("\(list.temp.day.round)º")
                Image("01d")
                Text(list.temp.min.round.toString)
                    .font(.title)
                    .foregroundColor(.white)
            }
            Text(list.weather.last?.description ?? "Unkown")
                .font(.body)
                .foregroundColor(.white)
        }
    }
}

struct CardViewModifier: ViewModifier {
    var timestamp: TimeInterval

    init(_ timestamp: TimeInterval) {
        self.timestamp = timestamp
    }

    func body(content: Content) -> some View {
        content
            .background(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.yellow]), startPoint: .topLeading, endPoint: .bottomTrailing))
            .cornerRadius(20)
            
    }

    private var day: String {
        return dayOfTheWeekFromTimestamp(self.timestamp)
    }
}
