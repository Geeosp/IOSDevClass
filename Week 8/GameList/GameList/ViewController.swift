//
//  ViewController.swift
//  GameList
//
//  Created by Geovane Silva Pereira on 3/2/16.
//  Copyright © 2016 Geovane Silva Pereira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var game: Game?
    
    override func viewWillAppear(animated: Bool) {
       
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        name.text = game?.name;
        console.text = game?.console;
        descritption.text = game?.description
        let image = game?.image;
         imageView.image = UIImage(named: image!)
   
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var descritption: UITextView!
    
    @IBOutlet weak var console: UILabel!
    
    @IBOutlet weak var name: UILabel!
    
    
    
    
    

}

