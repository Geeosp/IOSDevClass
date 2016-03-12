//
//  CitiesTableViewController.swift
//  FirstFlake
//
//  Created by Geovane Silva Pereira on 3/8/16.
//  Copyright © 2016 Geovane Silva Pereira. All rights reserved.
//

import UIKit

class CitiesTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.leftBarButtonItem = editButtonItem()
        cities.append(City(name:"Chicago", latitude:41.875163,longitude: -87.626206));
        cities.append(City(name:"New York", latitude: 40.648053,longitude: -73.956160));
        cities.append(City(name:"Recife", latitude:-8.139559,longitude:  -34.909153));
        cities.append(City(name:"Anchorage", latitude:61.117657, longitude: -149.532932));
        
   //  self.tableView.reloadData()
        
    }
    override func viewDidAppear(animated: Bool) {
        self.tableView.reloadData()
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
        return cities.count
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("basic", forIndexPath: indexPath) as! CityTableViewCell
        let city = cities[indexPath.item];
        cell.lb_cityname.text = city.name
        return cell
    }
    
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
    // Return false if you do not want the specified item to be editable.
    return true
    }
    */
    
    
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
    if editingStyle == .Delete {
    // Delete the row from the data source
    
        cities.removeAtIndex(indexPath.item);
        tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        
    } else if editingStyle == .Insert {
    // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }
    }

    
    
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {
       
        let i1 = fromIndexPath.item;
        let i2 = toIndexPath.item;
        let aux = cities[i1]
        cities.removeAtIndex(i1);
        cities.insert(aux, atIndex: i2)
        
    }
   
    
    
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
    // Return false if you do not want the item to be re-orderable.
    return true
    }
    
  
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if let viewController = segue.destinationViewController as? CityDetailsTableViewController {
            if let indexPath = self.tableView.indexPathForSelectedRow{
                viewController.cityIndex = indexPath.row
            }
        }
    }
    
}