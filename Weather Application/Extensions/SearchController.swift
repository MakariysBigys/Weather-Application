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
        guard var searchBarText = searchBar.text else { return }
        searchBarText = searchBarText.split(separator: " ").joined(separator: "%20")
        networkWeatherManager.fetchCurrentWeather(forCity: "\(searchBarText)")
        
    }
}
