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
        
        self.objNavigationHeaderView.addShadow()
        
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
        
        let objItem = ClsDispensaryItem()
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
        tblMenu.reloadData()
    }

    @IBAction func btnBackTapped(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func btnShowDirectionsTapped(_ sender: Any) {
    }
    
    @IBAction func btnFilterTapped(_ sender: Any) {
    
        let objActionSheet = UIAlertController(title: "", message: "", preferredStyle: .actionSheet)

        for i in 1...4 {
        
            let objAction = UIAlertAction(title: "Option_\(i)", style: .default) { (action) in
                print("selected option \(action.title)_\(i)")
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
        objCell.imgMenuItem.layer.masksToBounds = true
        objCell.imgMenuItem.layer.cornerRadius = 3.0
        objCell.imgMenuItem.layer.borderWidth = 1.0
        objCell.imgMenuItem.layer.borderColor = #colorLiteral(red: 0.9333333333, green: 0.9333333333, blue: 0.9333333333, alpha: 1).cgColor
        objCell.priceView.layer.cornerRadius = 3.0
        objCell.priceView.layer.masksToBounds = true
        
        /*
        objCell.objRowView.layer.masksToBounds = true
        objCell.objRowView.layer.cornerRadius = 0.0
        objCell.objRowView.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.1170804795).cgColor
        objCell.objRowView.layer.borderWidth = 0.5
        */
        return objCell
    }
}

extension DispensaryMenuController: UITableViewDelegate {

    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let objSectionView = Bundle.main.loadNibNamed("DispensaryMenuHeaderView", owner: self, options: nil)?.first as! DispensaryMenuHeaderView
        objSectionView.lblTitle.text = "FLOWER"
        objSectionView.btnUnit.setTitle("1/8 OZ", for: .normal)
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
