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
    
    var data: Weather = Weather(city: "Paris", code: 200, weatherDetail: [WeatherDetail(main: "Clouds", description: "brken clouds")], main: Main(temp: 24.6, feelsLike: 25.0, pressure: 67, humidity: 69))
    
    var viewModel = SearchViewModel()
    
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
        guard let searchCity = searchBar.text else { return }
        
        viewModel.fetchWeather(with: searchCity) { (result) in
            switch result{
            case .success(let result):
                print(result)
                self.data = result
                let sfSymbol = self.viewModel.checkSymbolNum(with: self.data.code)
                
                self.cityNameLabel.text = self.data.city
                
                self.humidityLabel.text = "Hummidty: \(self.data.main.humidity.doubleToString(self.data.main.humidity))%"
                
                self.feelsLikeLabel.text = String("Feels Like: \(self.data.main.feelsLike.doubleToString(self.data.main.feelsLike))º")
                
                self.pressureLabel.text = String("Pressure: \(self.data.main.pressure.doubleToString(self.data.main.pressure)) hPa")
                
                self.weatherMainLabel.text = self.data.weatherDetail[0].main
                
                self.weatherCelciusLabel.text = "\(self.data.main.temp.doubleToString(self.data.main.temp))º"
                
                self.sfSymbolLabel.image = UIImage(systemName: sfSymbol)
                
            
            case .failure(let error):
                print(error)
            }
        }
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searchBar.text = ""
    }
}
