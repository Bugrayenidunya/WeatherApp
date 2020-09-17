//
//  Displayable.swift
//  WeatherApp
//
//  Created by Bugra's Mac on 16.09.2020.
//  Copyright © 2020 Bugra. All rights reserved.
//

import Foundation

protocol Displayable {
    var cityName: String { get }
    var sfSymbolCode: Int { get }
    var weatherDetails: [WeatherDetail] { get }
    var mainData: Main { get }
}
