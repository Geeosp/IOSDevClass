//
//  ViewController.swift
//  RemoteControl
//
//  Created by Geovane Silva Pereira on 1/26/16.
//  Copyright © 2016 Geovane Silva Pereira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var power = "ON"
    var volume = 15
    var channel = 13
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    
    @IBAction func switch_action(sender: UISwitch) {
        if sender.on{
            power = "ON"
        }else{
            power = "OFF"
        }
        update();
    }
    
    @IBAction func slider_action(sender: UISlider) {
        volume = Int(sender.value)
        update()
    }
    
    @IBAction func choosedChannel(sender: UISegmentedControl) {
        switch(sender.selectedSegmentIndex){
        case 0:
            channel=13
            break
        case 1:
            channel = 27
            break;
        case 2:
            channel = 50
            break;
        case 3:
            channel = 32
            
            break;
        default:
            channel = 1;
            break;
            
        }
        update()
    }
    
    
    func update(){
        
        
    }
    func changeChannel(x:Int){
        
    }

}

