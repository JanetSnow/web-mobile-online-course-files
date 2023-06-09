//
//  WeatherModel.swift
//  Clima
//
//  Created by yaowenjing16 on 2021/10/25.
//  Copyright © 2021 App Brewery. All rights reserved.
//

import Foundation

struct WeatherModel {
    let conditionId: Int
    let cityName: String
    let temperature: Double
    
    var temperatureString : String {
        return String(format: "%.1f", temperature)
    }
//    here, conditionName is a computed property:
//    var + a name: a datatype {an output that is going to be set as the value of the property}
    var conditionName: String {
        switch conditionId {
        case 200...232:
            return "cloud.bolt"
        case 300...321:
            return "cloud.drizzle"
        case 500...531:
            return "cloud.rain"
        case 600...622:
            return "cloud.snow"
        case 701...781:
            return "cloud.fog"
        case 800:
            return "sun.max"
        case 801...804:
            return "cloud.bolt"
        default:
            return "cloud"
        }
    }
}
