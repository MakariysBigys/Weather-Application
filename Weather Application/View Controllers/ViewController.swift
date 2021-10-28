//
//  ViewController.swift
//  Weather Application
//
//  Created by User on 22.10.21.
//

import UIKit

class ViewController: UIViewController, UISearchBarDelegate {
    
    @IBOutlet weak var searchBar: UISearchBar!
    
    let networkWeatherManager = NetworkWeatherManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.delegate = self
        
        networkWeatherManager.fetchCurrentWeather(forCity: "Minsk")
        
        
        }
        
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
//        let urlString = "https://api.openweathermap.org/data/2.5/forecast?q=\(searchBar.text!)&appid=\(apiKey)"
        //searchBar.showsCancelButton = true
        }
        
        
    

    

   
