//
//  MyTabController.swift
//  RemoteControl
//
//  Created by Geovane Silva Pereira on 2/24/16.
//  Copyright © 2016 Geovane Silva Pereira. All rights reserved.
//
import UIKit

class OrderModel: NSObject {
    var pizza:String = "No"
    var pie:String = "No"
    
    func currentOrder() -> String{ //return a string with the current order
        return pizza + " pizza and " + pie + " pie"
    }
}



class MyTabController: UITabBarController {
    
    var myOrder = OrderModel()
}
