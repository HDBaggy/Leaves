//
//  DealsViewController.swift
//  Wikileaf
//
//  Created by Harshit on 25/08/17.
//  Copyright © 2017 ZestyGuys. All rights reserved.
//

import UIKit

class DealsViewController: UIViewController {
    
    @IBOutlet weak var tblDeals: UITableView!
    var arrSections:[ClsOfferSection]!
    @IBOutlet weak var objNavigationbar: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        initializeOnce()
    }
    
    func initializeOnce(){

//        objNavigationbar.addShadow()
        
        arrSections = Array()
        
        var objSection = ClsOfferSection()
        objSection.arrOffers = Array()
        objSection.strOffer = "TODAY'S DEAL"
        
        var objOffer = ClsOffer()
        objOffer.strOffer = "Get 20% off on all Indica Strains and 5% off on all products from Seattle Private Reserve"
        objSection.arrOffers.append(objOffer)
        arrSections.append(objSection)
        
        objSection = ClsOfferSection()
        objSection.arrOffers = Array()
        objSection.strOffer = "MONDAY'S DEAL"
        
        objOffer = ClsOffer()
        objOffer.strOffer = "Get 20% off on all Indica Strains and 5% off on all products from Seattle Private Reserve"
        objSection.arrOffers.append(objOffer)
        arrSections.append(objSection)
        
        objSection = ClsOfferSection()
        objSection.arrOffers = Array()
        objSection.strOffer = "FRIDAY'S DEAL"
        
        objOffer = ClsOffer()
        objOffer.strOffer = "Get 20% off on all Indica Strains and 5% off on all products from Seattle Private Reserve"
        objSection.arrOffers.append(objOffer)
        arrSections.append(objSection)
        
        tblDeals.rowHeight = UITableViewAutomaticDimension
        tblDeals.estimatedRowHeight = 60
    }
    
    @IBAction func btnBackTapped(_ sender: Any) {
    
        self.navigationController?.popViewController(animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

extension DealsViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return arrSections.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        let objSection = arrSections[section]
        return objSection.arrOffers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let objSection = arrSections[indexPath.section]
        let objDetail = objSection.arrOffers[indexPath.row]
        let objCell = tableView.dequeueReusableCell(withIdentifier: "OfferCell", for: indexPath) as! DetailOfferCell
        objCell.lblOfferDetail.text = objDetail.strOffer
        //objCell.imgOfferIcon.image = UIImage(named: objDetail.strIcon)
        return objCell
    }
}

extension DealsViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return UITableViewAutomaticDimension
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let objSection = arrSections[section]
        let objSectionView = Bundle.main.loadNibNamed("DealsHeaderView", owner: self, options: nil)?.first as! DealsHeaderView
        objSectionView.lblTitle.text = objSection.strOffer
        return objSectionView
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        
        return 64
    }
}
