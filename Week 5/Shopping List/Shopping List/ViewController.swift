//
//  ViewController.swift
//  Shopping List
//
//  Created by Geovane Silva Pereira on 2/9/16.
//  Copyright © 2016 Geovane Silva Pereira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tb_list: UITextView!
    @IBOutlet weak var tb_quantity: UITextField!
    @IBOutlet weak var tb_item: UITextField!
    @IBOutlet var textFields: [UITextField]!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func new_list_action(sender: AnyObject) {
        
        
        
        
        tb_quantity.text="";
        tb_item.text="";
        tb_list.text = "";
        
        
        
        
    }
    
    
    @IBAction func new_item_action(sender: AnyObject) {
        
        tb_quantity.text="";
        tb_item.text="";
    
    }
    
    @IBAction func add_action(sender: AnyObject) {
        
        if (tb_item.text == ""){
            let message = "Please fill the item";
            let title = "Empty Item!";
            let alertController = UIAlertController(title: title,
                message: message, preferredStyle: .Alert)  ;
            let cancelAction = UIAlertAction(title: "OK", style: .Cancel, handler: nil) ;
            alertController.addAction(cancelAction);
            
            presentViewController(alertController, animated: true,   completion: nil);
        }
            else if (tb_quantity.text == ""){
            let message = "Please tell us the quantity";
            let title = "Empty Quantity!";
            let alertController = UIAlertController(title: title,
                message: message, preferredStyle: .Alert)  ;
            let cancelAction = UIAlertAction(title: "OK", style: .Cancel, handler: nil) ;
            alertController.addAction(cancelAction);
            
            presentViewController(alertController, animated: true,   completion: nil);
            
        }
            
            
            else{
        
        
        tb_list.text = tb_list.text!
            + "\n"
            + String(tb_quantity.text!)
            + "x "
            + tb_item.text!;
        
        tb_quantity.text="";
        tb_item.text="";
        }
    }
    
    
    @IBAction func ed_item(sender: AnyObject) {
        
        resignFirstResponder();
    }
    
    @IBAction func dismissKeyboards(sender: AnyObject) {
        for tf in textFields{
        tf.resignFirstResponder();
        }
    }
   
    
    
}

