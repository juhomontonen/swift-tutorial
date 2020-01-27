//
//  ContentView.swift
//  WeatherApp
//
//  Created by Juho Montonen on 20/01/2020.
//  Copyright © 2020 Juho Montonen. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var selected = 0
    @ObservedObject var weather = CurrentWeatherViewModel()
    @State var city: String = ""
    
    //@ObservedObject var weeklyWeather = WeeklyWeatherViewModel()
    //private var height = UIScreen.main.bounds.height

    var body: some View {
        VStack() {
            TextField("Enter your city", text: $city){
                self.weather.fetch(by: self.city)
                //self.weeklyWeather.fetch(by: self.city)
            }.padding(.horizontal)
            
            GeometryReader{ gr in
                CurrentWeather(weather: self.weather.current, height: self.selected == 0 ? gr.size.height : gr.size.height * 0.50).animation(.easeInOut(duration: 0.5))
            }
            
            //WeeklyWeatherView(listData: weeklyWeather.weather?.list ?? [], value: selected, height: height * 0.5)
            
            VStack{
                Picker("", selection: $selected){
                    Text("Today")
                        .tag(0)
                    Text("Week")
                        .tag(1)
                }.pickerStyle(SegmentedPickerStyle()).padding(.horizontal)
            }
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
    }
}


// this is an extension to make our Double as a whole nnumber without decimal value
extension Double {
    var round: Int {
        return Int(self)
    }
}
