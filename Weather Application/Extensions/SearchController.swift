//
//  SearchController.swift
//  Weather Application
//
//  Created by User on 2.11.21.
//

import Foundation
import UIKit


extension ViewController: UISearchBarDelegate {
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        let searchBarText = searchBar.text!
        networkWeatherManager.fetchCurrentWeather(forCity: "\(searchBarText)")
    }
}
