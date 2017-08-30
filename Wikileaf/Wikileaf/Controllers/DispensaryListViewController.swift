//
//  DispensaryListViewController.swift
//  Wikileaf
//
//  Created by Harshit on 30/08/17.
//  Copyright © 2017 ZestyGuys. All rights reserved.
//

import UIKit

class DispensaryListViewController: UIViewController {

    @IBOutlet weak var tblDispensaries: UITableView!
    var arrDispensaries:[ClsDispensary]!
    lazy var fltRowHeight:CGFloat = {
    
        let objView = Bundle.main.loadNibNamed("DispensaryDetailView", owner: self, options: nil)?.first as! DispensaryDetailView
        return objView.frame.size.height
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initializeOnce()
    }
    
    func initializeOnce(){
    
        let objNib = UINib.init(nibName: "DispensaryDetailView", bundle: nil)
        tblDispensaries.register(objNib, forCellReuseIdentifier: "DispensaryListCell")
        
        arrDispensaries = Array()
        
        arrDispensaries.append(ClsDispensary())
        arrDispensaries.append(ClsDispensary())
        arrDispensaries.append(ClsDispensary())
        arrDispensaries.append(ClsDispensary())
        
        tblDispensaries.rowHeight = UITableViewAutomaticDimension
        tblDispensaries.estimatedRowHeight = 60
        tblDispensaries.reloadData()
    }
    
    @IBAction func btnBackTapped(_ sender: Any) {
    
        self.navigationController?.popViewController(animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
     
    }
}

extension DispensaryListViewController: UITableViewDataSource {

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrDispensaries.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let objCell =  tableView.dequeueReusableCell(withIdentifier: "DispensaryListCell", for: indexPath) as! DispensaryDetailView
        return objCell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
     
        return fltRowHeight
    }
}

extension DispensaryListViewController: UITableViewDelegate {

    
}
