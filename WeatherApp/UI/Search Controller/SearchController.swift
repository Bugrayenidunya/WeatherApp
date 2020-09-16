//
//  ViewController.swift
//  WeatherApp
//
//  Created by Bugra's Mac on 14.09.2020.
//  Copyright © 2020 Bugra. All rights reserved.
//

import UIKit

class SearchController: UIViewController {
    
    //MARK: Outlets
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var cityNameLabel: UILabel!
    @IBOutlet weak var sfSymbolLabel: UIImageView!
    @IBOutlet weak var weatherMainLabel: UILabel!
    @IBOutlet weak var weatherCelciusLabel: UILabel!
    @IBOutlet weak var humidityLabel: UILabel!
    @IBOutlet weak var pressureLabel: UILabel!
    @IBOutlet weak var feelsLikeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchBar.delegate = self
    }
    

}

//MARK: - UISearchBarDelegate
extension SearchController: UISearchBarDelegate {
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        
    }
}
