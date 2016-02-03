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
    var dez  = true;
    @IBOutlet weak var down_view: UIView!
    
    
    
    
    @IBOutlet weak var lb_power: UILabel!
    
    @IBOutlet weak var lb_volume: UILabel!
    
    @IBOutlet weak var lb_channel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        update();
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    
    @IBAction func switch_action(sender: UISwitch) {
        if sender.on{
            power = "ON"
            down_view.userInteractionEnabled=true;
        }else{
            power = "OFF"
            down_view.userInteractionEnabled=false;
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
            channel = 13
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
        lb_power.text = "Power " + power
        lb_volume.text = "Volume " + String(volume)
        lb_channel.text = "Channel " + String( channel)
    }
    func changeChannel(x:Int){
        if(dez){
            channel = 10*x
            dez = false;
        }else{
            channel += x;
            dez = true;
        }
        
        
        update();
    }
    
    
    
    @IBAction func bt1() {
        changeChannel(1)
    }
   
    @IBAction func bt2(sender: AnyObject) {
    changeChannel(2)
    }
    
    @IBAction func bt3(sender: AnyObject) {
    changeChannel(3)
    }
    
    
    @IBAction func bt4(sender: AnyObject) {
    changeChannel(4)
    }
    
    @IBAction func bt5(sender: AnyObject) {
   changeChannel(5)
    }
    
    
    @IBAction func bt6(sender: AnyObject) {
   changeChannel(6)
    }
    
    @IBAction func bt7(sender: AnyObject) {
        changeChannel(7)
    }
    
    @IBAction func bt8(sender: AnyObject) {
        changeChannel(8)
    }
    
    @IBAction func bt9(sender: AnyObject) {
        changeChannel(9)
    }
    
    @IBAction func bt0(sender: AnyObject) {
        changeChannel(0)
    }

    
    
    @IBAction func ch_minus(sender: AnyObject) {
        channel--;
        if channel<1{
            channel = 99
        }
        update()
        update()
    }
    
    
    @IBAction func chPlus(sender: AnyObject) {
        channel++;
        if channel>99{
            channel = 1
        }
        update()
    }
    
    
    
    
    
    

}

