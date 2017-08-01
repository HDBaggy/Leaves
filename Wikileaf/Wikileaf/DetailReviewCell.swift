//
//  DetailReviewCell.swift
//  Wikileaf
//
//  Created by Harshit on 01/08/17.
//  Copyright © 2017 ZestyGuys. All rights reserved.
//

import UIKit
import HCSStarRatingView

class DetailReviewCell: UITableViewCell {

    @IBOutlet weak var objRatingView: HCSStarRatingView!
    @IBOutlet weak var lblReviewerDetail: UILabel!
    @IBOutlet weak var lblReview: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
