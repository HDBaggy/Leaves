//
//  StrainCommonUsageCell.swift
//  Wikileaf
//
//  Created by Harshit on 01/09/17.
//  Copyright © 2017 ZestyGuys. All rights reserved.
//

import UIKit

class StrainCommonUsageCell: UITableViewCell {

    @IBOutlet weak var lblUsageName: UILabel!
    @IBOutlet weak var imgIcn1: UIImageView!
    @IBOutlet weak var imgIcn2: UIImageView!
    @IBOutlet weak var imgIcn3: UIImageView!
    @IBOutlet weak var imgIcn4: UIImageView!
    @IBOutlet weak var imgIcn5: UIImageView!
    @IBOutlet weak var containerView: UIView!
    
    func configureRating(intRating:Int){
        
        containerView.addBorder()
        
        imgIcn1.isHidden = true
        imgIcn2.isHidden = true
        imgIcn3.isHidden = true
        imgIcn4.isHidden = true
        imgIcn5.isHidden = true
        
        switch intRating {
        case 1:
            imgIcn5.isHidden = false
            break
        case 2:
            imgIcn5.isHidden = false
            imgIcn4.isHidden = false
            break
        case 3:
            imgIcn5.isHidden = false
            imgIcn4.isHidden = false
            imgIcn3.isHidden = false
            break
        case 4:
            imgIcn5.isHidden = false
            imgIcn4.isHidden = false
            imgIcn3.isHidden = false
            imgIcn2.isHidden = false
            break
        case 5:
            imgIcn5.isHidden = false
            imgIcn4.isHidden = false
            imgIcn3.isHidden = false
            imgIcn2.isHidden = false
            imgIcn1.isHidden = false
            break
        default:
            break
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }

}
