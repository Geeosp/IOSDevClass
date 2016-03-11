//
//  CityDetailsTableViewController.swift
//  FirstFlake
//
//  Created by Geovane Silva Pereira on 3/11/16.
//  Copyright © 2016 Geovane Silva Pereira. All rights reserved.
//

import UIKit
import ForecastIOClient
enum WelcomeType:Int {
    case
    noSnow,
    snowToday,
    snowingNow,
    snowThisWeek
}
class CityDetailsTableViewController: UITableViewController {
    var cityIndex:Int!
    var city:City!
    var complete = false;
  //  @IBOutlet weak var progressView: UIProgressView!

    override func viewDidLoad() {
        super.viewDidLoad()
        city = cities[cityIndex]
        self.title = city.name
        //  progressView.setProgress(0, animated: false)
        reloadData()
    }
    func reloadData(){
        // Retrieve current forecast
      //  progressView.setProgress(0, animated: false)
        
        ForecastIOClient.sharedInstance.forecast(city.latitude, longitude: city.longitude, failure: { (error) in
            let alert: UIAlertController = UIAlertController(title: "Error", message: error.localizedDescription, preferredStyle: UIAlertControllerStyle.Alert)
            let alertAction: UIAlertAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil)
            alert.addAction(alertAction)
            self.presentViewController(alert, animated: true, completion: nil)
            
            })
            { (response, forecastAPICalls) -> Void in
      //          self.progressView.setProgress(100, animated: false)
                
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
           self.complete = true;
        self.tableView.reloadData()
        }
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 4
    }
    
    @IBAction func deletePressed(sender: AnyObject) {
        cities.removeAtIndex(cityIndex)
        navigationController!.popViewControllerAnimated(true)//dismiss segue
        print(cities.count)
        
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell :UITableViewCell;
                let index = indexPath.item;
        print ("row"+String(index));
       //  cell = tableView.dequeueReusableCellWithIdentifier("snowhour", forIndexPath: indexPath)
        if(complete){
        switch index{
        case 0:
               let aux = tableView.dequeueReusableCellWithIdentifier("welcomecell", forIndexPath: indexPath) as! WelcomeTableViewCell
               var text = "";
               var welcomeType = WelcomeType.snowingNow;
               switch welcomeType{
               case .noSnow:
                text = "Don`t give up!"
                break;
               case .snowToday:
                text = "It`s snow day!"
                break;
               case .snowingNow:
                text = "Look at the window!"
                break;
               case .snowThisWeek:
                text = "Winter is Comming"
                break;
               }
               aux.welcome_lb.text = text;
               cell = aux;
              
            break;
        case 1:
             cell = tableView.dequeueReusableCellWithIdentifier("temperaturecell", forIndexPath: indexPath)
             break;
        case 2:
            cell = tableView.dequeueReusableCellWithIdentifier("snowhour", forIndexPath: indexPath)
            break;
        case 3:
            cell = tableView.dequeueReusableCellWithIdentifier("snowday", forIndexPath: indexPath)
            break;
       /* case 4:
            cell = tableView.dequeueReusableCellWithIdentifier("nomoresnow", forIndexPath: indexPath)
*/
default:
            cell = tableView.dequeueReusableCellWithIdentifier("none", forIndexPath: indexPath)

            break;
        }
        }else{
            cell = tableView.dequeueReusableCellWithIdentifier("none", forIndexPath: indexPath)
            
       

        }
      


        return cell;
    }
    



}
