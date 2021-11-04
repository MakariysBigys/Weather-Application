//
//  CurrentWeatherData.swift
//  Weather Application
//
//  Created by User on 4.11.21.
//

import Foundation

struct CurrentWeatherData: Decodable {
    let city: City
    let list: [List]
    let weather: [Weather]
}

struct Weather: Decodable {
    let id: Int
    let description: String
}

struct City: Decodable {
    let name: String
    let country: String
}

struct List: Decodable {
    let main: Main
}

struct Main: Decodable {
    let temp: Double
    let feelsLike: Double
    
    enum CodingKeys: String, CodingKey {
        case temp
        case feelsLike = "feels_like"
    }
}
