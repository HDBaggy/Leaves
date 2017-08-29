//
//  RatingOverviewCell.swift
//  Wikileaf
//
//  Created by Harshit on 21/08/17.
//  Copyright © 2017 ZestyGuys. All rights reserved.
//

import UIKit
import HCSStarRatingView

class RatingOverviewCell: UITableViewCell {

    @IBOutlet weak var lblRating: UILabel!
    @IBOutlet weak var ratingView: HCSStarRatingView!
    @IBOutlet weak var lblRatingCount: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
