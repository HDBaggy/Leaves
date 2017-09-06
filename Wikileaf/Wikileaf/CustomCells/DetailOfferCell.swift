//
//  DetailOfferCell.swift
//  Wikileaf
//
//  Created by Harshit on 01/08/17.
//  Copyright © 2017 ZestyGuys. All rights reserved.
//

import UIKit

class DetailOfferCell: UITableViewCell {

    @IBOutlet weak var lblOfferDetail: UILabel!
    @IBOutlet weak var imgOfferIcon: UIImageView!
    @IBOutlet weak var lblOfferTitle: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
