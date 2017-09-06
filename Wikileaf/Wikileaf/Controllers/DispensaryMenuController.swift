//
//  DispensaryMenuController.swift
//  Wikileaf
//
//  Created by Harshit on 09/08/17.
//  Copyright © 2017 ZestyGuys. All rights reserved.
//

import UIKit

class DispensaryMenuController: UIViewController {

    @IBOutlet weak var searchContainerView: UIView!
    @IBOutlet weak var txtSearch: UITextField!
    @IBOutlet weak var tblMenu: UITableView!
    var arrMenuItem:[ClsDispensaryItem]!
    var strCurrentWeightage = "1/8 OZ"
    @IBOutlet var objNavigationHeaderView: UIView!
    @IBOutlet weak var btnFilter: UIButton!
    @IBOutlet weak var searchBar: UIView!
    @IBOutlet weak var navigationHeader: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        initializeOnce()
        
        /*
        searchContainerView.layer.masksToBounds = true
        searchContainerView.layer.cornerRadius = 3.0
        */

        /*
 shadowView.backgroundColor=[UIColor colorWithRed:228.0/255.0 green:228.0/255.0 blue:228.0/255.0 alpha:0.5];
 [shadowView.layer setCornerRadius:5.0f];
 [shadowView.layer setBorderColor:[UIColor lightGrayColor].CGColor];
 [shadowView.layer setBorderWidth:0.2f];
 [shadowView.layer setShadowColor:[UIColor colorWithRed:225.0/255.0 green:228.0/255.0 blue:228.0/255.0 alpha:1.0].CGColor];
 [shadowView.layer setShadowOpacity:1.0];
 [shadowView.layer setShadowRadius:5.0];
 [shadowView.layer setShadowOffset:CGSizeMake(5.0f, 5.0f)];
    */
        
        /*
        let shadowPath = UIBezierPath(rect: objNavigationHeaderView.bounds)
        objNavigationHeaderView.layer.masksToBounds = false
        objNavigationHeaderView.layer.shadowColor = UIColor.black.cgColor
        objNavigationHeaderView.layer.shadowOffset = CGSize(width:2.0, height: 2.5)
        objNavigationHeaderView.layer.shadowOpacity = 1.0
        objNavigationHeaderView.layer.shadowPath = shadowPath.cgPath
         */
        
        
//        objNavigationHeaderView.layer.masksToBounds = true
//        objNavigationHeaderView.layer.shadowOffset = CGSize(width: 0.0, height: 1.0)
//        objNavigationHeaderView.layer.shadowRadius = 5
//        objNavigationHeaderView.layer.shadowOpacity = 0.85
//        objNavigationHeaderView.layer.shadowColor = UIColor.black.cgColor
        
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
//        self.objNavigationHeaderView.addShadow()
        
    }
    
    /*
    func addShadow(pobjView:UIView){
    
        pobjView.layer.shadowRadius = 3
        pobjView.layer.shadowOffset = CGSize(width: 0, height: 1)
        pobjView.layer.shadowColor = UIColor.black.cgColor
        pobjView.layer.shadowOpacity = 0.75
        
    }*/
    
    func initializeOnce(){
    
        arrMenuItem = Array()
        
        var objItem = ClsDispensaryItem()
        objItem.strItemName = "Flower"
        objItem.arrDispensary = Array()
        
        var objDispensary = ClsDispensary()
        objDispensary.strDispensaryTitle = "Hindu Kush by Seattle Private LTD"
        objDispensary.strDispensaryType = "Indica"
        objDispensary.strTHCAmount = "THC - 65.8%"
        objDispensary.strCBDAmount = "CBD - 65.8%"
        objDispensary.strPrice = "$74"
        objItem.arrDispensary.append(objDispensary)
        
        objDispensary = ClsDispensary()
        objDispensary.strDispensaryTitle = "Hindu Kush by Seattle Private LTD"
        objDispensary.strDispensaryType = "Indica"
        objDispensary.strTHCAmount = "THC - 65.8%"
        objDispensary.strCBDAmount = "CBD - 65.8%"
        objDispensary.strPrice = "$74"
        objItem.arrDispensary.append(objDispensary)
        
        objDispensary = ClsDispensary()
        objDispensary.strDispensaryTitle = "Hindu Kush by Seattle Private LTD"
        objDispensary.strDispensaryType = "Indica"
        objDispensary.strTHCAmount = "THC - 65.8%"
        objDispensary.strCBDAmount = "CBD - 65.8%"
        objDispensary.strPrice = "$74"
        objItem.arrDispensary.append(objDispensary)
        
        objDispensary = ClsDispensary()
        objDispensary.strDispensaryTitle = "Hindu Kush by Seattle Private LTD"
        objDispensary.strDispensaryType = "Indica"
        objDispensary.strTHCAmount = "THC - 65.8%"
        objDispensary.strCBDAmount = "CBD - 65.8%"
        objDispensary.strPrice = "$74"
        objItem.arrDispensary.append(objDispensary)
        
        objDispensary = ClsDispensary()
        objDispensary.strDispensaryTitle = "Hindu Kush by Seattle Private LTD"
        objDispensary.strDispensaryType = "Indica"
        objDispensary.strTHCAmount = "THC - 65.8%"
        objDispensary.strCBDAmount = "CBD - 65.8%"
        objDispensary.strPrice = "$74"
        objItem.arrDispensary.append(objDispensary)
        
        objDispensary = ClsDispensary()
        objDispensary.strDispensaryTitle = "Hindu Kush by Seattle Private LTD"
        objDispensary.strDispensaryType = "Indica"
        objDispensary.strTHCAmount = "THC - 65.8%"
        objDispensary.strCBDAmount = "CBD - 65.8%"
        objDispensary.strPrice = "$74"
        objItem.arrDispensary.append(objDispensary)
        
        objDispensary = ClsDispensary()
        objDispensary.strDispensaryTitle = "Hindu Kush by Seattle Private LTD"
        objDispensary.strDispensaryType = "Indica"
        objDispensary.strTHCAmount = "THC - 65.8%"
        objDispensary.strCBDAmount = "CBD - 65.8%"
        objDispensary.strPrice = "$74"
        objItem.arrDispensary.append(objDispensary)
        
        objDispensary = ClsDispensary()
        objDispensary.strDispensaryTitle = "Hindu Kush by Seattle Private LTD"
        objDispensary.strDispensaryType = "Indica"
        objDispensary.strTHCAmount = "THC - 65.8%"
        objDispensary.strCBDAmount = "CBD - 65.8%"
        objDispensary.strPrice = "$74"
        objItem.arrDispensary.append(objDispensary)
        
        objDispensary = ClsDispensary()
        objDispensary.strDispensaryTitle = "Hindu Kush by Seattle Private LTD"
        objDispensary.strDispensaryType = "Indica"
        objDispensary.strTHCAmount = "THC - 65.8%"
        objDispensary.strCBDAmount = "CBD - 65.8%"
        objDispensary.strPrice = "$74"
        objItem.arrDispensary.append(objDispensary)
        arrMenuItem.append(objItem)
        
        objItem = ClsDispensaryItem()
        objItem.strItemName = "Flower 2"
        objItem.arrDispensary = Array()
        
        objDispensary = ClsDispensary()
        objDispensary.strDispensaryTitle = "Hindu Kush by Seattle Private LTD"
        objDispensary.strDispensaryType = "Indica"
        objDispensary.strTHCAmount = "THC - 65.8%"
        objDispensary.strCBDAmount = "CBD - 65.8%"
        objDispensary.strPrice = "$74"
        
        objItem.arrDispensary.append(objDispensary)
        objItem.arrDispensary.append(objDispensary)
        objItem.arrDispensary.append(objDispensary)
        objItem.arrDispensary.append(objDispensary)
        objItem.arrDispensary.append(objDispensary)
        objItem.arrDispensary.append(objDispensary)
        objItem.arrDispensary.append(objDispensary)
        objItem.arrDispensary.append(objDispensary)
        objItem.arrDispensary.append(objDispensary)
        objItem.arrDispensary.append(objDispensary)
        objItem.arrDispensary.append(objDispensary)
        objItem.arrDispensary.append(objDispensary)

        
        arrMenuItem.append(objItem)
        tblMenu.reloadData()
    }

    @IBAction func btnBackTapped(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func btnSearchTapped(_ sender: Any) {
        
        self.searchBar.isHidden = false
        self.searchBar.alpha = 0
        
        UIView.animate(withDuration: 0.3, animations: {
            
            self.navigationHeader.alpha = 0
            self.searchBar.alpha = 1
            
        }) { (completed) in
            
            self.navigationHeader.isHidden = true
            self.txtSearch.becomeFirstResponder()
        }
    }
    
    @IBAction func btnCancelTapped(_ sender: Any) {
        
        self.navigationHeader.isHidden = false
        self.navigationHeader.alpha = 0
        self.txtSearch.resignFirstResponder()
        
        UIView.animate(withDuration: 0.3, animations: {
            
            self.navigationHeader.alpha = 1
            self.searchBar.alpha = 0
            
        }) { (completed) in
            
            self.searchBar.isHidden = true
        }
    }
    
    
    @IBAction func btnShowDirectionsTapped(_ sender: Any) {
        
    }
    
    @IBAction func btnFilterTapped(_ sender: Any) {
    
        let objActionSheet = UIAlertController(title: "", message: "", preferredStyle: .actionSheet)

        for i in 1...4 {
        
            let objAction = UIAlertAction(title: "Option_\(i)", style: .default) { (action) in
                
                self.btnFilter.setTitle(action.title, for: .normal)
            }
            objActionSheet.addAction(objAction)
        }
        
        let objCancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        objActionSheet.addAction(objCancelAction)

        self.present(objActionSheet, animated: true, completion: nil)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension DispensaryMenuController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return arrMenuItem.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let objSection = arrMenuItem[section]
        return objSection.arrDispensary.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let objSection = arrMenuItem[indexPath.section]
        let objItem = objSection.arrDispensary[indexPath.row]

        let objCell =  tableView.dequeueReusableCell(withIdentifier: "DispensaryMenuCell", for: indexPath) as! DispensaryMenuCell
        objCell.lblItemName.text = objItem.strDispensaryTitle
        objCell.lblPrice.text = objItem.strPrice
        objCell.lblItemType.text = objItem.strDispensaryType
        objCell.lblThcAmount.text = objItem.strTHCAmount
        objCell.lblCbdAmount.text = objItem.strCBDAmount
        objCell.lblWeightage.text = self.strCurrentWeightage
        objCell.imgMenuItem.image = UIImage(named: objItem.strImage)

        objCell.imgMenuItem.addBorder()
        objCell.imgMenuItem.makeRoundedCorner()
        objCell.priceView.makeRoundedCorner()

        return objCell
    }
}

extension DispensaryMenuController: UITableViewDelegate {

    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let objItem = arrMenuItem[section]
        let objSectionView = Bundle.main.loadNibNamed("DispensaryMenuHeaderView", owner: self, options: nil)?.first as! DispensaryMenuHeaderView
        objSectionView.lblTitle.text = objItem.strItemName
        objSectionView.btnUnit.setTitle(objItem.strUnit, for: .normal)
        
        objSectionView.objSectionBlock = {
        
            let objActionSheet = UIAlertController(title: "Select Unit", message: "", preferredStyle: .actionSheet)
            let arrTitles = ["1/8 OZ","1/16 OZ","1/2 OZ","1 OZ"]
            
            for strTmpTitle in arrTitles {
                
                let objAction = UIAlertAction(title: strTmpTitle, style: .default) { (action) in

                    objItem.strUnit = action.title!
                    objSectionView.btnUnit.setTitle(objItem.strUnit, for: .normal)
                }
                objActionSheet.addAction(objAction)
            }
            
            let objCancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
            objActionSheet.addAction(objCancelAction)
            
            self.present(objActionSheet, animated: true, completion: nil)
            
        }
        
        return objSectionView
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80.0
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 56.0
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

    }
}

