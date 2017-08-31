//
//  StrainGraphCell.swift
//  Wikileaf
//
//  Created by Harshit on 31/08/17.
//  Copyright © 2017 ZestyGuys. All rights reserved.
//

import UIKit

class StrainGraphCell: UITableViewCell {

    @IBOutlet weak var averageIndicaGraph: StrainGraphView!
    @IBOutlet weak var strainHighestGraph: StrainGraphView!
    @IBOutlet weak var strainAverageGraph: StrainGraphView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
