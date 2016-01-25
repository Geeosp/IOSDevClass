//
//  ViewController.swift
//  Calculator2.0
//
//  Created by Geovane Silva Pereira on 1/24/16.
//  Copyright © 2016 Geovane Silva Pereira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lb_total: UILabel!
    @IBOutlet weak var lb_current: UILabel!
    @IBOutlet weak var lb_signal: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lb_current.text = "0";
        lb_total.text = "0";
        lb_signal.text = "";
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    func pressedS(c:String){
        lb_signal.text = c;
        lb_total.text = lb_current.text;
      lb_current.text = "0";
        
       
        
        
    }
    
    
    @IBAction func bt_plus(sender: AnyObject) {
        pressedS("+");
    }
    
    
    
    @IBAction func pt_minus(sender: AnyObject) {
    pressedS("-");
    }
    
    
    @IBAction func bt_times(sender: AnyObject) {
    
    pressedS("*");}
    
    @IBAction func bt_div(sender: AnyObject) {
    pressedS("/");
    }
    
    
    @IBAction func bt_solve(sender: AnyObject) {
        solve();
    }
    
    func solve(){
        
        switch lb_signal.text!{
            
        case "/":
            if(lb_current.text != "0"){
                let a = Int(lb_total.text!);
                let  b = Int(lb_current.text!);
                let c = a!/b!;
                lb_total.text = String(c);
                lb_current.text = "0";
                lb_signal.text = "";
                
            }else{
                lb_current.text = "ERROR";
            }
            break;
        case "*":
            let a = Int(lb_total.text!);
            let  b = Int(lb_current.text!);
            let c = a!*b!;
            lb_total.text = String(c);
            lb_current.text = "0";
            lb_signal.text = "";
            break;
        case "+":
            let a = Int(lb_total.text!);
            let  b = Int(lb_current.text!);
            let c = a!+b!;
            lb_total.text = String(c);
            lb_current.text = "0";
            lb_signal.text = "";
            
            break;
        case "-":
            let a = Int(lb_total.text!);
            let  b = Int(lb_current.text!);
            let c = a!-b!;
            lb_total.text = String(c);
            lb_current.text = "0";
            lb_signal.text = "";
            break;
        default:
            break;
        }
        
    }
    
    
    
    @IBAction func clean(sender: AnyObject) {
        
        lb_signal.text = "";
        lb_total.text = "0";
        lb_current.text = "0";
        
    }
    
    
    
    func pressedN(x:Int){
        if(lb_current.text != "0"){
            lb_current.text = lb_current.text!+String(x);

        }else{
            lb_current.text = String(x);

        }
        
    }
    
    @IBAction func bt_1_pressed(sender: AnyObject) {
        pressedN(1);
    }

    @IBAction func bt_2_pressed(sender: UIButton) {
    pressedN(2);
    }
    
    @IBAction func bt_3_p(sender: AnyObject) {
    
    pressedN(3);}
    
    
    @IBAction func bt_4_p(sender: AnyObject) {
    
    pressedN(4);}
    
    @IBAction func bt_5_p(sender: AnyObject) {
   pressedN(5);
    }
    
    @IBAction func bt_6_p(sender: AnyObject) {
    pressedN(6);
    
    }
 
    @IBAction func bt_7_p(sender: AnyObject) {
        pressedN(7);
    }
  
    @IBAction func bt_8_p(sender: AnyObject) {
        pressedN(8);
    }

    @IBAction func bt_0_p(sender: AnyObject) {
        pressedN(0);
    }
   
    
    @IBAction func bt_9_p(sender: AnyObject) {
        pressedN(9);
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    
    
    
    
}

