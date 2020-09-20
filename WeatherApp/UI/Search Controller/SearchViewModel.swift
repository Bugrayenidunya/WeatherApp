//
//  SearchViewModel.swift
//  WeatherApp
//
//  Created by Bugra's Mac on 20.09.2020.
//  Copyright © 2020 Bugra. All rights reserved.
//

import Alamofire
import Foundation
import SwiftyJSON


enum FetchError: Error {
    case generalError
}

struct SearchViewModel {
    
    mutating func fetchWeather(with city: String, completion: @escaping(Swift.Result<Weather,Error>) -> Void) {
        let url = "\(Constant.ApiConstants.baseUrl)?q=\(city)&appid=\(Constant.ApiConstants.apiKey)&units=\(Constant.ApiConstants.units)"
        
        let request = AF.request(url)
        
        request.responseDecodable(of: Weather.self) { (response) in
            do {
                try completion(Swift.Result.success(response.result.get()))
            } catch {
                print(error)
            }
        }
    }
    
    func checkSymbolNum(with number: Int) -> String {
        switch number {
        case 200...232:
            return "tornado"
        case 300...321:
            return "cloud.drizzle"
        case 500...532:
            return "cloud.rain"
        case 600...622:
            return "cloud.snow"
        case 800:
            return "sun.max"
        case 801...804:
            return "cloud"
        default:
            return "wind"
        }
    }
    
}
