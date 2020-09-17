//
//  ViewController.swift
//  WeatherApp
//
//  Created by Bugra's Mac on 14.09.2020.
//  Copyright © 2020 Bugra. All rights reserved.
//

import UIKit
import Alamofire

class SearchController: UIViewController {
    
    var data: Displayable?
    var weatherManager = WeatherManager()
    
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
//        commonInit()
        
        searchBar.delegate = self
        
        weatherManager.fetchWeather(with: "Paris")
        
        
        print("Search Controller Data: ",data as Any)
    }

    /*
    private func commonInit() {
        guard let data = data else { return }
        
        cityNameLabel.text = data.cityName
        feelsLikeLabel.text = String("Feels Like: \(data.mainData.feelsLike)")
    }
    */
}

//MARK: - UISearchBarDelegate
extension SearchController: UISearchBarDelegate {
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        
    }
}
