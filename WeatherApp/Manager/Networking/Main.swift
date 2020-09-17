//
//  Main.swift
//  WeatherApp
//
//  Created by Bugra's Mac on 17.09.2020.
//  Copyright © 2020 Bugra. All rights reserved.
//

import Foundation

struct Main: Decodable {
    let temp: Double
    var feelsLike: Double
    let pressure: Double
    let humidity: Double
    
    enum CodingKeys: String, CodingKey {
        case feelsLike = "feels_like"
        case temp
        case pressure
        case humidity
    }
}
