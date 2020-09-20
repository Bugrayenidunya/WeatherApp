//
//  Weather.swift
//  WeatherApp
//
//  Created by Bugra's Mac on 16.09.2020.
//  Copyright © 2020 Bugra. All rights reserved.
//

import Foundation

struct Weather: Decodable {
    let city: String
    let code: Int
    let weatherDetail: [WeatherDetail]
    let main: Main
    
    enum CodingKeys: String, CodingKey {
        case city = "name"
        case code = "cod"
        case weatherDetail = "weather"
        case main = "main"
    }
}
