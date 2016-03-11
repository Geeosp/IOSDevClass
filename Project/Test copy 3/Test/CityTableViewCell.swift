//
//  CityTableViewCell.swift
//  FirstFlake
//
//  Created by Geovane Silva Pereira on 3/9/16.
//  Copyright © 2016 Geovane Silva Pereira. All rights reserved.
//

import UIKit

class CityTableViewCell: UITableViewCell {

    @IBOutlet weak var lb_cityname: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
