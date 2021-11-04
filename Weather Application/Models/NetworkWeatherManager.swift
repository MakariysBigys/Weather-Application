//
//  NetworkWeatherManager.swift
//  Weather Application
//
//  Created by User on 28.10.21.
//

import Foundation
import UIKit

struct NetworkWeatherManager {
    
    func fetchCurrentWeather(forCity city: String) {
        print(city)
        let urlString = "https://api.openweathermap.org/data/2.5/forecast?q=\(city)&appid=\(apiKey)"
        guard let url = URL(string: urlString) else { return }
        let session = URLSession(configuration: .default)
        let task = session.dataTask(with: url) { data, response, error in
            if let data = data {
//                let dataString = String(data: data, encoding: .utf8)
//                print(dataString)
                let currentWeather = self.parseJSON(withData: data)
            }
        }
        task.resume()
    }
    
    func parseJSON(withData data: Data) -> CurrentWeather? {
        let decoder = JSONDecoder()
        do {
            let currentWeatherData = try decoder.decode(CurrentWeatherData.self, from: data)
            guard let currentWeather = CurrentWeather(currentWeatherData: currentWeatherData) else { return nil }
            return currentWeather
        } catch  let error as NSError {
            print(error.localizedDescription)
        }
        return nil
    }
    
}
