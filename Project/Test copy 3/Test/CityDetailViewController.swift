//
//  CityDetailViewController.swift
//  FirstFlake
//
//  Created by Geovane Silva Pereira on 3/9/16.
//  Copyright © 2016 Geovane Silva Pereira. All rights reserved.
//

import UIKit
import ForecastIOClient
class CityDetailViewController: UIViewController {
    var cityIndex:Int!
    var city:City!
    @IBOutlet weak var progressView: UIProgressView!
    override func viewDidLoad() {
        super.viewDidLoad()
        city = cities[cityIndex]
        self.title = city.name
        progressView.setProgress(0, animated: false)
        reloadData()
        // Do any additional setup after loading the view.
    }

    func reloadData(){
        // Retrieve current forecast
       progressView.setProgress(0, animated: false)
        
        ForecastIOClient.sharedInstance.forecast(city.latitude, longitude: city.longitude, failure: { (error) in
            let alert: UIAlertController = UIAlertController(title: "Error", message: error.localizedDescription, preferredStyle: UIAlertControllerStyle.Alert)
            let alertAction: UIAlertAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil)
            alert.addAction(alertAction)
            self.presentViewController(alert, animated: true, completion: nil)
            
            })
            { (response, forecastAPICalls) -> Void in
              self.progressView.setProgress(100, animated: false)
                
               print(response.longitude)
                /*
                if let numberOfAPICalls: Int = forecastAPICalls {
                    print("\(numberOfAPICalls) forecastIO API calls made today!")
                }
                if let currentTemperature: Double = forecast.currently?.temperature {
                    self.temperatureLabel.text = String(Int(round(currentTemperature))) + "°"
                }
                if let weatherSummary: String = forecast.currently?.summary {
                    self.weatherSummaryLabel.text = weatherSummary
                }
*/
        }

    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    @IBAction func deletePressed(sender: AnyObject) {
        cities.removeAtIndex(cityIndex)
        navigationController!.popViewControllerAnimated(true)//dismiss segue
        print(cities.count)
    
    }
    

}
