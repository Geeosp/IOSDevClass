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
        if let g = game {
       // titleLabel.text = w.name  descriptionLabel.text = w.longDescription
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        name.text = game?.name;
        console.text = game?.console;
        descritption.text = game?.description
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    @IBOutlet weak var descritption: UITextView!
    
    @IBOutlet weak var console: UILabel!
    
    @IBOutlet weak var name: UILabel!
    
    
    
    
    

}

