//
//  ForecastIOTableViewCell.swift
//  FirstFlake
//
//  Created by Geovane Silva Pereira on 3/11/16.
//  Copyright © 2016 Geovane Silva Pereira. All rights reserved.
//

import UIKit

class ForecastIOTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func forecastioTappes(sender: UIButton) {
        let forecastIOURL: NSURL = NSURL(string: "http://www.forecast.io")!
        UIApplication.sharedApplication().openURL(forecastIOURL)
    
    }
}
