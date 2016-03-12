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
    var temperature:Double=0.0;
    var welcomeType = WelcomeType.noSnow;
    var complete = false;
    var snowHour: [NSDate]=[];
    var snowDaily: [NSDate]=[];
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
                self.welcomeType = WelcomeType.noSnow;
                if let currently = response.currently{
                    if let daily = response.daily{
                        
                        if let data = daily.data{
                            for d in data{
                                print (d.icon!)
                                if d.icon! == "snow"{
                                    self.welcomeType = .snowThisWeek;
                                    self.snowDaily.append(NSDate(timeIntervalSince1970: NSTimeInterval(d.time)));
                                    
                                }
                            }
                        }
                    }
                    if let hourly = response.hourly{
                        if let data = hourly.data{
                            for  d in data{
                                print (d.icon!)
                                if d.icon! == "snow"{
                                    self.welcomeType = .snowToday;
                                    self.snowHour.append(NSDate(timeIntervalSince1970: NSTimeInterval(d.time)));
                                }
                            }
                        }
                    }
                    
                    self.temperature = currently.temperature!;
                    if currently.icon=="snow"{
                        self.welcomeType = .snowingNow
                    }
                }
                
                
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
        return 2 + snowHour.count + snowDaily.count + 1
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
        //cell = tableView.dequeueReusableCellWithIdentifier("forecastiolink", forIndexPath: indexPath)
        if(complete){
            if index == 0 {
                let aux = tableView.dequeueReusableCellWithIdentifier("welcomecell", forIndexPath: indexPath) as! WelcomeTableViewCell
                var text = "";
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
                    text = "Snow is Comming"
                    break;
                }
                aux.welcome_lb.text = text;
                cell = aux;
            } else if index == 1{
                let aux = tableView.dequeueReusableCellWithIdentifier("temperaturecell", forIndexPath: indexPath) as! ForecastTemperatureTableViewCell
                aux.temperature_lb.text = String(temperature);
                cell = aux;
            
            }else if index>=2{
                if index < 2 + snowHour.count{
                    let aux = tableView.dequeueReusableCellWithIdentifier("snowhour", forIndexPath: indexPath) as! ForecastHourTableViewCell
                    let i = index - 2;
                    let date = snowHour[i];
                    
                    
                    let calendar = NSCalendar.currentCalendar()
                    let components = calendar.components([.Hour, .Minute], fromDate: date)
                    
                    let hour =  components.hour
                    let dani = components.minute
                    var text = "It will snow at "
                    text += String(format: "%02d",hour);
                    text += ":"
                    text += String(format: "%02d",dani)
                    aux.lb_snowhour.text = text
                    cell = aux;
            
                }else if index < 2 + self.snowHour.count + snowDaily.count{
                    let aux = tableView.dequeueReusableCellWithIdentifier("snowday", forIndexPath: indexPath) as! ForecastDayTableViewCell
                    let i = index - (2+snowHour.count) ;
                    let date = snowDaily[i];
                    let calendar = NSCalendar.currentCalendar()
                    let components = calendar.components([.Weekday], fromDate: date)
                    let day = components.weekday;
                    
                    var  text = "It will snow on ";
                    var sday:String
                    switch day{
                    case 1:
                        sday = "Sunday";break;
                    case 2:
                        sday = "Monday";break;
                    case 3:
                        sday = "Tuesday";break;
                    case 4:
                        sday = "Wednesday";break;
                    case 5:
                        sday = "Thursday";break;
                    case 6:
                        sday  = "Friday";break;
                    case 7:
                        sday = "Saturday";break;
                    default:sday = "Sunday"
                    }
                    
                    
                    
                    
                    
                    
                    text += sday;
                    aux.lb_snowday.text = text
                    cell = aux;
                }else{
                    let aux = tableView.dequeueReusableCellWithIdentifier("forecastiolink", forIndexPath: indexPath)
                    cell = aux;
                }
            }else{
                let aux = tableView.dequeueReusableCellWithIdentifier("forecastiolink", forIndexPath: indexPath)
                cell = aux;
            }
        }else{
            let aux = tableView.dequeueReusableCellWithIdentifier("none", forIndexPath: indexPath)
            cell = aux
        }
        
        return cell;
    }
    
    
    
    
}
