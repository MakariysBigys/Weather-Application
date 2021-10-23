//
//  ViewController.swift
//  Weather Application
//
//  Created by User on 22.10.21.
//

import UIKit

class ViewController: UIViewController, UISearchBarDelegate {
    
    @IBOutlet weak var searchBar: UISearchBar!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchBar.delegate = self
        //searchBar.showsCancelButton = true
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        let urlString = "https://api.openweathermap.org/data/2.5/forecast?q=\(searchBar.text!)&appid=59c2249fd161e32ba0eaa80a8259b136"
        let url = URL(string: urlString)
        let task = URLSession.shared.dataTask(with: url!) { (data, response, error) in
            
        }
        
        task.resume()
    }
}
    

   
