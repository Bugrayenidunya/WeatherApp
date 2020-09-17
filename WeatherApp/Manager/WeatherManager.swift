//
//  WeatherManager.swift
//  WeatherApp
//
//  Created by Bugra's Mac on 16.09.2020.
//  Copyright © 2020 Bugra. All rights reserved.
//

import Foundation
import Alamofire

struct WeatherManager {
    
    var data: Displayable?
    
    mutating func fetchWeather(with city: String) {
        let url = "\(K.openWeather.baseUrl)?q=\(city)&appid=\(K.openWeather.apiKey)"
        
        let request = AF.request(url)
        
        request.responseDecodable(of: Weather.self) { (response) in
            debugPrint(response)
        }
    }
    
}
