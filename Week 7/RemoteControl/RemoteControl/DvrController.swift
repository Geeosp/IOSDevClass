//
//  DvrController.swift
//  RemoteControl
//
//  Created by Geovane Silva Pereira on 2/17/16.
//  Copyright © 2016 Geovane Silva Pereira. All rights reserved.
//

import UIKit

class DvrController: UIViewController {

    @IBOutlet weak var power_lb: UILabel!
    
    
    @IBOutlet weak var state_lb: UILabel!
    
    
    var power = "On";
    var state =  "Pause"
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        update();
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func update(){
        power_lb.text = "Power: " + power;
        state_lb.text = "State: " + state;
        
    }
    
    @IBAction func powerSwitched(sender: UISwitch) {
        if(sender.on){
            power = "On";
        }else{
            power = "Off";
        }
        
        update();
        
        
    }
    
    
    
    @IBAction func play_push(sender: UIButton) {
        state = "Playing"
        update();
   
    }
    
    @IBAction func pause_push(sender: UIButton) {
        state = "Paused"
    update();
    }
    @IBAction func stop_push(sender: UIButton) {
        state = "Stopped"
        update();
    }
    @IBAction func ffoward_push(sender: UIButton) {
        state = "Fowarding"
        update();
    }
    @IBAction func frewind_push(sender: UIButton) {
        state = "Rewiding"
        update();
    }
    @IBAction func record_push(sender: UIButton) {
        state = "Recording"
    update();
    }
    
    
    

}
