//
//  ThirdViewController.swift
//  RemoteControl
//
//  Created by Geovane Silva Pereira on 2/24/16.
//  Copyright © 2016 Geovane Silva Pereira. All rights reserved.
//

import UIKit

var channelsTitleList: [String] = ["Hi", "Hello", "Oi", "Hola"];
var channelsList: [Int] = [ 2, 6, 28, 76];



class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        loadValues();
        update();
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var stepper: UIStepper!
    var channel_e = 2;
    var label_e = "";
    
    
    @IBOutlet weak var channel_o: UILabel!;
    
    @IBOutlet weak var selecter_o: UISegmentedControl!
    
    @IBOutlet weak var editText: UITextField!
    
    @IBAction func selecting(sender: UISegmentedControl) {
        loadValues();
        label_e = sender.titleForSegmentAtIndex(sender.selectedSegmentIndex)!
        ;
        stepper.value=Double(channelsList[sender.selectedSegmentIndex]);
        update();
        
    }
    
    @IBAction func dismissKeyboard(sender: AnyObject) {
        resignFirstResponder();
    }
    func update(){
        for (var i = 0;i<4;i++){
            selecter_o.setTitle(channelsTitleList[i], forSegmentAtIndex: i);
        
        }
        
        channel_o.text = "Channel: " + String(Int(stepper.value));
        editText.text = selecter_o.titleForSegmentAtIndex(selecter_o.selectedSegmentIndex);
        
        
        
    }
    
    @IBAction func stepping(sender: AnyObject) {
        channel_e = Int(stepper.value);
        update();
    }
    
    func loadValues(){
        
    }
    
  
    @IBAction func save(sender: UIButton) {
        channelsTitleList[selecter_o.selectedSegmentIndex]=editText.text!;
        channelsList[selecter_o.selectedSegmentIndex]=Int(stepper.value);
    }

}