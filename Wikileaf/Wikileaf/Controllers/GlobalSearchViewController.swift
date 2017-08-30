//
//  GlobalSearchViewController.swift
//  Wikileaf
//
//  Created by Harshit on 30/08/17.
//  Copyright © 2017 ZestyGuys. All rights reserved.
//

import UIKit

class GlobalSearchViewController: UIViewController {

    @IBOutlet weak var txtSearch: UITextField!
    @IBOutlet weak var searchBoxContainer: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        searchBoxContainer.addBorder()
        searchBoxContainer.makeRoundedCorner()
        
        // Do any additional setup after loading the view.
    }

    @IBAction func btnCancelTapped(_ sender: Any) {
    
        txtSearch.resignFirstResponder()
        self.dismiss(animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
