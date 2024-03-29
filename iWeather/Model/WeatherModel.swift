//
//  WeatherModel.swift
//  iWeather
//
//  Created by Vladimir Kovalev on 10.02.2023.
//

import Foundation

struct WeatherModel: Codable {
    var weather: [Weather]
    var main: Main
    var visibility: Int
    var wind: Wind
    var sys: Country
    var name: String
}

struct Weather: Codable {
    var id: Int
    var main: String
    var description: String
}

struct Main: Codable {
    var temp: Double
    var feels_like: Double
    var pressure: Int
    var humidity: Int
    var temp_max: Double
    var temp_min: Double
}

struct Wind: Codable {
    var speed: Double
}

struct Country: Codable {
    var country: String
}

struct WeatherModelForFiveDays: Codable {
    var list: [DayInList]
}

struct DayInList: Codable {
    var dt_txt: String
    var main: Main
    var weather: [Weather]
}

struct CurrentData: Codable {
    var data: CurrentDay
}

struct CurrentDay: Codable {
    var currentDay: Int
}





