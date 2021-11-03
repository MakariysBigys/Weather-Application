//
//  ViewController.swift
//  Weather Application
//
//  Created by User on 22.10.21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var feelsLikeTemperatureLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var weatherIconImageView: UIImageView!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var searchBar: UISearchBar!
    
    let networkWeatherManager = NetworkWeatherManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.delegate = self
        
        
        networkWeatherManager.fetchCurrentWeather(forCity: "Minsk")
        
        
        }
        
    }
    

        
        
    

    

   
