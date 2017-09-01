//
//  DrawerViewController.swift
//  Wikileaf
//
//  Created by Harshit on 22/07/17.
//  Copyright © 2017 ZestyGuys. All rights reserved.
//

import UIKit

protocol DrawerControllerDelegate {
    
    func showDispensaryMenu()
    func closeDrawer()
}

class DrawerViewController: UIViewController {

    @IBOutlet weak var tblDetails: UITableView!
    var arrDetails:[ClsDetail]!
    @IBOutlet weak var btnViewMenu: UIButton!
    var delegate:DrawerControllerDelegate!
    @IBOutlet weak var lblPrice: UILabel!
    @IBOutlet weak var shortView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initializeOnce()
    }
    
    func initializeOnce(){
        
        let objDetailView = Bundle.main.loadNibNamed("DispensaryDetailView", owner: self, options: nil)?.first as! DispensaryDetailView
        objDetailView.frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: objDetailView.frame.size.height)
        shortView.addSubview(objDetailView)

        tblDetails.rowHeight = UITableViewAutomaticDimension
        tblDetails.estimatedRowHeight = 60
        tblDetails.bounces = false
        
        btnViewMenu.layer.masksToBounds = true
        btnViewMenu.layer.cornerRadius =  3.0
        
        lblPrice?.layer.masksToBounds = true
        lblPrice?.layer.cornerRadius = 3.0
        
        arrDetails = Array()
        
        var objDetail = ClsDetail()
        objDetail.strAttributeName = "+41 31 961 99 00"
        objDetail.strImageName = "Phone Button"
        arrDetails.append(objDetail)
        
        objDetail = ClsDetail()
        objDetail.strAttributeName = "Distance - 3.58 mi."
        objDetail.strImageName = "Website Button"
        arrDetails.append(objDetail)
        
        objDetail = ClsDetail()
        objDetail.strAttributeName = "9509 Rainier Ave S,\nSeattle,\nWA98118"
        objDetail.strImageName = "Share Icon"
        arrDetails.append(objDetail)
        
        tblDetails.reloadData()
    }
    
    @IBAction func btnShowMenuTapped(_ sender: Any) {

        delegate?.showDispensaryMenu()
    }
    
    @IBAction func btnCloseTapped(_ sender: Any) {
        
        delegate?.closeDrawer()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

extension DrawerViewController: UITableViewDataSource {
 
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrDetails.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let objCell = tableView.dequeueReusableCell(withIdentifier: "DrawerDetailCell", for: indexPath) as! DrawerDetailCell
        let objDetail = arrDetails[indexPath.row]
        objCell.lblDetail.text = objDetail.strAttributeName
        objCell.imgDetailIcon.image = UIImage(named: objDetail.strImageName)
        
        return objCell
    }
}

extension DrawerViewController: UITableViewDelegate {

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        //return max(60, UITableViewAutomaticDimension)
        return UITableViewAutomaticDimension
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

