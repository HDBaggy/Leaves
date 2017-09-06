//
//  DispensaryDeatilView.swift
//  Wikileaf
//
//  Created by Harshit on 30/08/17.
//  Copyright © 2017 ZestyGuys. All rights reserved.
//

import UIKit
import HCSStarRatingView

class DispensaryDetailView: UITableViewCell {

    @IBOutlet weak var imgDispensary: UIImageView!
    @IBOutlet weak var lblDispensaryTitle: UILabel!
    @IBOutlet weak var ratingView: HCSStarRatingView!
    @IBOutlet weak var lblRatingCount: UILabel!
    @IBOutlet weak var lblDispensaryLocation: UILabel!
    @IBOutlet weak var lblDistance: UILabel!
    @IBOutlet weak var lblPrice: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        lblPrice.makeRoundedCorner()
        imgDispensary.makeRoundedCorner()
        imgDispensary.addBorder()
        ratingView.isEnabled = false
    }
    
    func configureCell(pobjDispensary:ClsDispensary){
    
        // Configure Dispensary
    }
}
