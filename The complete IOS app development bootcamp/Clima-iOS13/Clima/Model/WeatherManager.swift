
import UIKit
import CoreLocation

protocol WeatherManagerDelegate {
    func didUpdateWeather(_ weatherManager: WeatherManager, weather: WeatherModel)
    func didFailWithError(error: Error)
}

struct WeatherManager {
    let weatherURL = "https://api.openweathermap.org/data/2.5/weather?appid=ebefc39a80dbb56f309f9d18de927602&units=metric"
    
    var delegate: WeatherManagerDelegate?
    
    func fetchWeather(cityName: String) {
        let urlString = "\(weatherURL)&q=\(cityName)"
        performRequest(with: urlString)
    }
    
    func fetchWeather(latitude: CLLocationDegrees,longitude: CLLocationDegrees) {
        let urlString = "\(weatherURL)&lat=\(latitude)&lon=\(longitude)"
        performRequest(with: urlString)
    }
    
    func performRequest(with urlString: String){
        //        1.create a URL
        if let url = URL(string: urlString){
            //        2.create a URLSession
            let session = URLSession(configuration: .default)
            //        3.give the session a task
            //            let task = session.dataTask(with: url, completionHandler: handle(data:response:error:))
            //we can also turn the grey area,completionHandler: <#T##(Data?, URLResponse?, Error?) -> Void#>,into a trailing closure by hitting enter key, and you'll see the code in the following
            let task = session.dataTask(with: url) { data, response, error in
                if error != nil {
                    self.delegate?.didFailWithError(error: error!)
                    return
                    //return means if there's en error, I will not continue this function and exit.
                }
                if let safeData = data {
                    //                    let dataString = String(data: safeData, encoding: .utf8)  可以通过dataString获得信息，但是这样看起来太不容易，不好分辨信息，解决办法--->JSON, we can parse this data like swift object that has property and data.
                    if let weather = self.parseJSON(safeData) {
                        self.delegate?.didUpdateWeather(self, weather: weather)
                    }
                }
            }
            //        4.start the task
            task.resume()
        }
    }
    func parseJSON(_ weatherData: Data)->WeatherModel? {
        let decoder = JSONDecoder()
        do {
            let decodedData = try decoder.decode(WeatherData.self, from: weatherData)
            let id = decodedData.weather[0].id
            let temp = decodedData.main.temp
            let name = decodedData.name
            
            let weather = WeatherModel(conditionId: id, cityName: name, temperature: temp)
            return weather
            
        } catch {
            delegate?.didFailWithError(error: error)
            return nil
        }
    }
}


