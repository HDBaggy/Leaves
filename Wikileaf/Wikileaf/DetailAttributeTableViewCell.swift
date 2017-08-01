//
//  DetailAttributeTableViewCell.swift
//  Wikileaf
//
//  Created by Harshit on 31/07/17.
//  Copyright © 2017 ZestyGuys. All rights reserved.
//

import UIKit

class DetailAttributeCell: UITableViewCell {

    @IBOutlet weak var lblAttributeName: UILabel!
    @IBOutlet weak var lblAttributeValue: UILabel!
    @IBOutlet weak var imgAttributeIcon: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
