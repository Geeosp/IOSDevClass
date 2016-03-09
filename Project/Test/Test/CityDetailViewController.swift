//
//  CityDetailViewController.swift
//  FirstFlake
//
//  Created by Geovane Silva Pereira on 3/9/16.
//  Copyright © 2016 Geovane Silva Pereira. All rights reserved.
//

import UIKit

class CityDetailViewController: UIViewController {
    var cityIndex:Int!
    var city:City!
    override func viewDidLoad() {
        super.viewDidLoad()
        city = cities[cityIndex]
        self.title = city.name
        // Do any additional setup after loading the view.
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
