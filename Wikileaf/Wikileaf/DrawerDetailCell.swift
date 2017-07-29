//
//  DrawerDetailCell.swift
//  Wikileaf
//
//  Created by Harshit on 25/07/17.
//  Copyright © 2017 ZestyGuys. All rights reserved.
//

import UIKit

class DrawerDetailCell: UITableViewCell {

    @IBOutlet weak var lblDetail: UILabel!
    @IBOutlet weak var imgDetailIcon: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
