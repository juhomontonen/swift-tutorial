//
//  WeeklyWeatherViewModel.swift
//  WeatherApp
//
//  Created by Juho Montonen on 20/01/2020.
//  Copyright © 2020 Juho Montonen. All rights reserved.
//

import SwiftUI
import Combine

class WeeklyWeatherViewModel: ObservableObject {
    @Published var weather: WeeklyWeather?
    init() {
        self.fetch()
    }
}

extension WeeklyWeatherViewModel {
    func fetch(by city: String = "Lappeenranta") {
        API.weeklyWeather(city) {
            self.weather = $0
        }
    }
}
