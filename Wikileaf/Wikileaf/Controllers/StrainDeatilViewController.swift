//
//  StrainsViewController.swift
//  Wikileaf
//
//  Created by Harshit on 31/08/17.
//  Copyright © 2017 ZestyGuys. All rights reserved.
//

import UIKit

class StrainDetailViewController: UIViewController {
    
    @IBOutlet weak var tblDetails: UITableView!
    var objTableHeaderView:StrainDetailHeaderView!
    var arrDetails:[AnyObject]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.initializeOnce()
        tblDetails.reloadData()
    }
    
    func initializeOnce(){
        
        if arrDetails == nil {
            arrDetails = Array()
        }
        
        arrDetails.append(ClsAbout())
        
        loadHeader()
    }
    
    func loadHeader(){
        
        objTableHeaderView = Bundle.main.loadNibNamed("StrainDetailHeaderView", owner: self, options: nil)?.first as! StrainDetailHeaderView
        tblDetails.addSubview(objTableHeaderView)
        
        objTableHeaderView.expansionMode = .topOnly
        objTableHeaderView.minimumContentHeight = 64
        objTableHeaderView.maximumContentHeight = 350
        
        objTableHeaderView.contentShrinks = true
        objTableHeaderView.contentExpands = true
        objTableHeaderView.contentAnchor = .top
        objTableHeaderView.setMaximumContentHeight(350, resetAnimated: false)
        objTableHeaderView.headerDelegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

extension StrainDetailViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrDetails.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let objCell = tableView.dequeueReusableCell(withIdentifier: "strainGraphCell", for: indexPath) as! StrainGraphCell
        objCell.averageIndicaGraph.lblGraphName.text = "Average Indica"
        objCell.strainHighestGraph.lblGraphName.text = "Strain Highest"
        objCell.strainAverageGraph.lblGraphName.text = "Strain Average"
        
        
        
        objCell.averageIndicaGraph.configurBlueBar(pfltAmount: 50)
        objCell.strainHighestGraph.configurBlueBar(pfltAmount: 50)
        objCell.strainAverageGraph.configurBlueBar(pfltAmount: 50)
        
        objCell.averageIndicaGraph.configurGreenBar(pfltAmount: 60)
        objCell.strainHighestGraph.configurGreenBar(pfltAmount: 70)
        objCell.strainAverageGraph.configurGreenBar(pfltAmount: 10)
        
        
        return objCell
        
    }
}

extension StrainDetailViewController: FlexibleHeaderDelegate {
    
    func headerShareTapped() {
        
    }
    
    func headerGoBackTapped() {
        
        self.navigationController?.popViewController(animated: true)
    }
}
