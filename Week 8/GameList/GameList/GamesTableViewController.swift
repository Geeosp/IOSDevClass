//
//  GamesTableViewController.swift
//  GameList
//
//  Created by Geovane Silva Pereira on 3/2/16.
//  Copyright © 2016 Geovane Silva Pereira. All rights reserved.
//

import UIKit
struct Game{
    var name, description, console, image :String
    
}
let gamelist = [
    Game(name:"Uncharted 4",
        description: "Several years after his last adventure, retired fortune hunter, Nathan Drake, is forced back into the world of thieves.  With the stakes much more personal, Drake embarks on a globe-trotting journey in pursuit of a historical conspiracy behind a fabled pirate treasure.  His greatest adventure will test his physical limits, his resolve, and ultimately what he’s willing to sacrifice to save the ones he loves.",
        console:"PS4",
        image:"uncharted"
    ),
    Game(name:"Batman Arkham Knight",
        description: "Batman: Arkham Knight is a 2015 action-adventure video game developed by Rocksteady Studios and published by Warner Bros. Interactive Entertainment for PlayStation 4, Xbox One, and Microsoft Windows. Based on the DC Comics superhero Batman, it is the successor to the 2013 video game Batman: Arkham Origins, and the fourth main installment in the Batman: Arkham series. Arkham Knight was released worldwide on June 23, 2015.",
       
        console:"PC",
         image:"batman"
    ),
    Game(name:"Diddy Kong Racing",
        description: "Diddy Kong Racing is a racing video game developed and published by Rare for the Nintendo 64. It was first released on 14 November 1997 in Japan, 21 November 1997 in Europe and 24 November 1997 in North America. The game is set in Timber's Island' and revolves around Diddy Kong and his friends' attempt to defeat the intergalactic pig-wizard antagonist, Wizpig, through winning a series of races. The player can take control of any of the twelve featured characters throughout the game. Diddy Kong Racing features five worlds with four racetracks each, and the ability to drive a car, hovercraft, or pilot an aeroplane.",
        console:"Nintendo 64",
        image:"diddy"
    ),
    Game(name:"Zelda: Ocarina of Time",
        description: "The Legend of Zelda: Ocarina of Time (Japanese: ゼルダの伝説 時のオカリナ Hepburn: Zeruda no Densetsu: Toki no Okarina?) is a 1998 action-adventure video game developed and published by Nintendo for the Nintendo 64. It was released in Japan and North America in November 1998, and in Europe and Australia in December 1998. Originally developed for the 64DD peripheral,[11] the game was instead released on a 256-megabit (32-megabyte) cartridge, the largest-capacity cartridge Nintendo produced at that time. Ocarina of Time is the fifth game in the The Legend of Zelda series, and the first with 3D graphics. It was followed by a direct sequel, The Legend of Zelda: Majora's Mask, in 2000.",
        console:"Nintendo 64",
        image:"zelda"
    ),
    Game(name:"Boderlands",
        description: "Borderlands is a series of action role-playing first-person shooter video games in a space western/science fantasy setting, developed by Gearbox Software and published by 2K Games for multiple platforms.The series consists of three games, each with multiple downloadable content packs: Borderlands (2009), Borderlands 2 (2012) and Borderlands: The Pre-Sequel! (by 2K Australia, 2014).",
        console: "PC"
        ,image:"borderlands"
    ),
    Game(name:"Deus X",
        description: "Deus Ex: Mankind Divided is an upcoming cyberpunk-themed action role-playing video game—combining first-person shooter, stealth and role-playing elements[2]—developed by Eidos Montreal and published by Square Enix as a sequel to the 2011 Deus Ex: Human Revolution. Set two years after Human Revolution, Mankind Divided features the return of Adam Jensen, with new technology and body augmentations. It is played from the first-person perspective, with a third-person perspective cover system.",
        console:"PS4",
        image:"deusx"
    ),
    Game(name:"Tomb Raider",
        description: "Tomb Raider, styled as Lara Croft: Tomb Raider between 2001 and 2007, is a media franchise that originated with an action-adventure video game series created by British gaming company Core Design. Formally owned by Eidos Interactive, then by Square Enix after their acquisition of Eidos in 2009, the franchise focuses on the archaeologist-adventurer Lara Croft, who travels the globe searching for lost artifacts and infiltrating dangerous tombs and ruins. The character was created by a team at Core Design that included Toby Gard. The gameplay generally focuses around action-adventure exploration of environments, solving puzzles, navigating hostile environments filled with traps, and fighting numerous enemies.",
        console:"PS4",
        image:"tomb"
    ),
    Game(name:"The Last Guardian",
        description: "The Last Guardian, known in Japan as Hitokui no Ōwashi Trico (人喰いの大鷲トリコ Hitokui no Ōwashi Toriko?, literally \"Trico, the man-eating eagle\") and previously referred to by the working title Project Trico, is an upcoming video game developed by genDESIGN and published by Sony Computer Entertainment. The title is being designed and directed by Fumito Ueda, and is expected to share stylistic, thematic, and gameplay elements with his previous titles, Ico and Shadow of the Colossus, though it is unknown whether it will be directly related to either.[2]"
        , console:"PS4, XBox, PC",
        image:"lastguardian"
    ),
    Game(name:"No Men's Sky",
        description: "No Man's Sky is an upcoming adventure survival video game developed and published by the indie studio Hello Games. Players are free to explore the entirety of a procedurally generated deterministic open universe, which includes over 18 quintillion (1.8×1019) planets, many with their own set of flora and fauna.[1] By exploring, players will gain information about the planets that they can submit to The Atlas, a universal database that can be shared with other players of the game. Players also gain materials and blueprints to upgrade their character's equipment and purchase a variety of starships, allowing them to travel deeper into the center of the galaxy, interact in friendly or hostile manners to computer-controlled space-faring factions, or trade with other ships.",
        console:"PS4, PC",
        image:"nomensky"
    ),
    Game(name:"Unravel",
        description: "Unravel is a puzzle platform video game developed by Coldwood Interactive and published by Electronic Arts. It was announced on 15 June 2015 and released in February 2016 for PlayStation 4, Xbox One, and Microsoft Windows. The game centres on Yarny, a small anthropomorphic creature made of yarn whom the player navigates through the environment, utilizing the unraveling yarn which makes up Yarny to solve puzzles, avoid dangerous creatures, and traverse obstacles.\n Unravel received a favourable reception upon release, with many critics in agreement that the game's visuals, protagonist, soundtrack, and overall tone were among its strong suits. Some negative comments were made concerning the controls, variety of puzzles, and platforming.",
        console:"PS4",
        image:"unravel"
    ),
    Game(name:"Pokemon GO",
        description: "Pokémon GO is an upcoming augmented reality game for mobile phones developed by Niantic, scheduled to be released in 2016 for iOS and Android devices.[1] The game will be released alongside the Pokémon Go Plus, a small wearable device developed by Nintendo, which uses a Bluetooth connection to notify users when a Pokémon is nearby with a LED and a light rumble.[2] The game will allow players to capture, battle, train and trade virtual Pokémon who appear throughout the real world.[2] The game will be free-to-play, although it will support in-app purchases.[3]",
        console:"Android, IOS",
        image: "pokemon"
    ),
    Game(name:"Child of light",
        description: "Child of Light is a platforming role-playing video game developed by Ubisoft Montreal and published by Ubisoft. The game puts players in the shoes of Aurora, a child stolen from her home, who, in her quest to return, must bring back the sun, the moon and the stars held captive by the mysterious Queen of the Night.With a deployment cost about one million US$,[2] was released on Microsoft Windows, PlayStation 3, PlayStation 4, Wii U, Xbox 360 and Xbox One in April 2014, and was released on PlayStation Vita in July 2014. It is powered by UbiArt Framework, an in-house engine by Ubisoft previously used for Rayman Origins and its sequel, Rayman Legends.",
        console:"PS4, PC",
        image:"childoflight"
    ),
    Game(name:"Mark Of the Ninja",
        description: "Mark of the Ninja is a side-scrolling action stealth video game developed by Klei Entertainment and published by Microsoft Studios. It was announced on February 28, 2012 and later released for the Xbox 360 via Xbox Live Arcade on September 7, 2012. A Microsoft Windows version was released on October 16, 2012, later released for Linux and OS X on September 11, 2013. It follows the story of a nameless ninja in the present day, and features a themed conflict between ancient ninja tradition and modern technology. Cutscenes for the game are rendered in Saturday morning cartoon animation style.",
        console:"PC",
        image:"markofninja"
    ),
    
    
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
