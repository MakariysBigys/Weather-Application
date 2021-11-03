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
        let urlString = "https://api.openweathermap.org/data/2.5/forecast?q=\(city)&appid=\(apiKey)"
        guard let url = URL(string: urlString) else { return }
        let session = URLSession(configuration: .default)
        let task = session.dataTask(with: url) { data, response, error in
            if let data = data {
                let dataString = String(data: data, encoding: .utf8)
//                print(dataString)
            }
        }
        task.resume()
    }
    
}
