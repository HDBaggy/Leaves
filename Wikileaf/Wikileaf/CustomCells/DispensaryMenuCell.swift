//
//  DispensaryMenuCell.swift
//  Wikileaf
//
//  Created by Harshit on 09/08/17.
//  Copyright © 2017 ZestyGuys. All rights reserved.
//

import UIKit

class DispensaryMenuCell: UITableViewCell {

    @IBOutlet weak var imgMenuItem: UIImageView!
    @IBOutlet weak var lblItemName: UILabel!
    @IBOutlet weak var lblItemType: UILabel!
    @IBOutlet weak var lblThcAmount: UILabel!
    @IBOutlet weak var lblCbdAmount: UILabel!
    @IBOutlet weak var priceView: UIView!
    @IBOutlet weak var objRowView: UIView!
    
    @IBOutlet weak var lblWeightage: UILabel!
    @IBOutlet weak var lblPrice: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
