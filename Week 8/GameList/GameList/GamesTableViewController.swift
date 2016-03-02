//
//  GamesTableViewController.swift
//  GameList
//
//  Created by Geovane Silva Pereira on 3/2/16.
//  Copyright © 2016 Geovane Silva Pereira. All rights reserved.
//

import UIKit
struct Game{
    var name, description, console :String
    
}
let gamelist = [
    Game(name:"Uncharted 4",
        description: "äsiuhdaudhaiuhd",
        console:"PS4"
    ),
    Game(name:"Batman Arkham Knight",
        description: "äsiuhdaudhaiuhd",
        console:"PC"
    ),
    Game(name:"Diddy Kong Racing",
        description: "äsiuhdaudhaiuhd",
        console:"Nintendo 64"
    ),
    Game(name:"Zelda: Ocarina of Time",
        description: "äsiuhdaudhaiuhd",
        console:"Nintendo 64"
    ),
    Game(name:"Boderlands",
        description: "äsiuhdaudhaiuhd",
        console: "PC"
        
    ),
    Game(name:"Deus X",
        description: "äsiuhdaudhaiuhd",
        console:"PS4"
    ),
    Game(name:"Üncharted 4",
        description: "äsiuhdaudhaiuhd",
        console:"PS4"
    ),
    Game(name:"Üncharted 4",
        description: "äsiuhdaudhaiuhd"
        , console:"PS4"
    ),
    Game(name:"Üncharted 4",
        description: "äsiuhdaudhaiuhd",
        console:"PS4"
    ),
    Game(name:"Üncharted 4",
        description: "äsiuhdaudhaiuhd",
        console:"PS4"
    ),
    Game(name:"Üncharted 4",
        description: "äsiuhdaudhaiuhd",
        console:"PS4"
    ),
    Game(name:"Üncharted 4",
        description: "äsiuhdaudhaiuhd",
        console:"PS4"
    ),
    Game(name:"Üncharted 4",
        description: "äsiuhdaudhaiuhd",
        console:"PS4"
    ),
    Game(name:"Üncharted 4",
        description: "äsiuhdaudhaiuhd",
        console:"PS4"
    ),
    Game(name:"Üncharted 4",
        description: "äsiuhdaudhaiuhd",
        console:"PS4"
    ),
    Game(name:"Üncharted 4",
        description: "äsiuhdaudhaiuhd",
        console:"PS4"
    ),
    Game(name:"Üncharted 4",
        description: "äsiuhdaudhaiuhd",
        console:"PS4"
    ),
    Game(name:"Üncharted 4",
        description: "äsiuhdaudhaiuhd",
        console:"PS4"
    )
    
    
];

class GamesTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
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
        return gamelist.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("basic", forIndexPath: indexPath)

        // Configure the cell...
        cell.textLabel?.text = gamelist[indexPath.row].name
        
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        
        if let viewController = segue.destinationViewController as? ViewController {
           if let indexPath = self.tableView.indexPathForSelectedRow{
                   viewController.game = gamelist[indexPath.row]
            }
        }
    }

   
}
