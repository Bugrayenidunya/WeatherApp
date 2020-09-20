//
//  String+Double.swift
//  WeatherApp
//
//  Created by Bugra's Mac on 20.09.2020.
//  Copyright © 2020 Bugra. All rights reserved.
//

import Foundation

extension Double {
    
    func doubleToString(_ double: Double) -> String{
        return String(format: "%.1f", double)
    }
}
