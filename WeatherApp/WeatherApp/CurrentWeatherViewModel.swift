//
//  CurrentWeatherViewModel.swift
//  WeatherApp
//
//  Created by Juho Montonen on 20/01/2020.
//  Copyright © 2020 Juho Montonen. All rights reserved.
//

import Foundation
import Combine

final class CurrentWeatherViewModel: ObservableObject {
    @Published var current: Weather?
    
    init() {
        self.fetch()
    }
}

extension CurrentWeatherViewModel {
    func fetch(by city: String = "Lappeenranta"){
        API.fetchCurrentWeather(by: city) {
            self.current = $0
        }
    }
}
