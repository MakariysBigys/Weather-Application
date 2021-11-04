//
//  CurrentWeather.swift
//  Weather Application
//
//  Created by User on 4.11.21.
//

import Foundation

struct CurrentWeather {
    let cityName: String
    let countryName: String
    let weatherDescription: String
    
    let temperature: Double
    var temperatureString: String {
        return "\(temperature.rounded())"
    }
    
    let feelsLike: Double
    var feelsLikeString: String {
        return "\(feelsLike.rounded())"
    }
    
    let conditionCode: Int
    
    
    init?(currentWeatherData: CurrentWeatherData) {
        cityName = currentWeatherData.city.name
        countryName = currentWeatherData.city.country
        weatherDescription = currentWeatherData.weather[0].description
        conditionCode = currentWeatherData.weather[0].id
        temperature = currentWeatherData.list[0].main.temp
        feelsLike = currentWeatherData.list[0].main.feelsLike
    }
}
