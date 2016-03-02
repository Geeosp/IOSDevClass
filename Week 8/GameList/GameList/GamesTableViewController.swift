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
        description: "Several years after his last adventure, retired fortune hunter, Nathan Drake, is forced back into the world of thieves.  With the stakes much more personal, Drake embarks on a globe-trotting journey in pursuit of a historical conspiracy behind a fabled pirate treasure.  His greatest adventure will test his physical limits, his resolve, and ultimately what he’s willing to sacrifice to save the ones he loves.",
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
        description: "Borderlands is a series of action role-playing first-person shooter video games in a space western/science fantasy setting, developed by Gearbox Software and published by 2K Games for multiple platforms.The series consists of three games, each with multiple downloadable content packs: Borderlands (2009), Borderlands 2 (2012) and Borderlands: The Pre-Sequel! (by 2K Australia, 2014).",
        console: "PC"
        
    ),
    Game(name:"Deus X",
        description: "Deus Ex: Mankind Divided is an upcoming cyberpunk-themed action role-playing video game—combining first-person shooter, stealth and role-playing elements[2]—developed by Eidos Montreal and published by Square Enix as a sequel to the 2011 Deus Ex: Human Revolution. Set two years after Human Revolution, Mankind Divided features the return of Adam Jensen, with new technology and body augmentations. It is played from the first-person perspective, with a third-person perspective cover system.",
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
