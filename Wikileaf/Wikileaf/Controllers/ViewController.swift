//
//  ViewController.swift
//  Wikileaf
//
//  Created by Harshit on 22/07/17.
//  Copyright © 2017 ZestyGuys. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, UIGestureRecognizerDelegate {
    
    @IBOutlet weak var objContainerView: HDDrawerView!
    @IBOutlet weak var objMapView: MKMapView!
    var objDrawerController:DrawerViewController!
    @IBOutlet weak var objListContainerView: UIView!
    var objDispensaryListController:DispensaryListViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        initializeOnce()
    }
    
    func initializeOnce(){
        
        objMapView?.setCenter(CLLocationCoordinate2DMake(47.6062, -122.33), animated: false)
        objMapView.addAnnotation(getNewAnnotation())
        addDrawer()
    }
    
    func getNewAnnotation() -> MKPointAnnotation {
        
        let objAnnotation = MKPointAnnotation()
        objAnnotation.coordinate = CLLocationCoordinate2D(latitude: Double(47.6063), longitude:Double(-122.34))
        objAnnotation.title = ""
        return objAnnotation
    }
    
    func addDrawer(){
        
        objContainerView.frame = CGRect(x: 0, y: self.view.frame.size.height - 30, width: self.view.frame.size.width, height: self.view.frame.size.height)
        objContainerView.addSteps(parrSteps: [self.view.frame.size.height - 148, 148.0])
        objContainerView.isHidden = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        if segue.destination.isKind(of: DrawerViewController.self) == true {
            objDrawerController = segue.destination as! DrawerViewController
            objDrawerController.delegate = self
        }
        
        if segue.identifier == "embedDispensaryList" {

            objDispensaryListController = segue.destination as! DispensaryListViewController
        }
    }
    
    @IBAction func btnListTapped(_ sender: Any) {
    
        objListContainerView.isHidden = false
    }
    
    @IBAction func btnMapTapped(_ sender: Any) {
   
        objListContainerView.isHidden = true
    }
    
    @IBAction func btnSearchTapped(_ sender: Any) {
    
        self.performSegue(withIdentifier: "showSearchScreen", sender: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}

extension ViewController:DrawerControllerDelegate {

    func showDispensaryMenu() {
        self.performSegue(withIdentifier: "showDispensaryMenu", sender: nil)
    }
    
    func closeDrawer() {
        
    }
}

extension ViewController:MKMapViewDelegate {
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {

        let objAnnotation = Bundle.main.loadNibNamed("PlaceAnnotationView", owner: self, options: nil)?.first as! PlaceAnnotationView
        return objAnnotation
    }
    
    func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
        objContainerView.isHidden = false
        objContainerView.setVerticalGap(pfltGap: 148)
        let objAnnotationView = view as! PlaceAnnotationView
        objAnnotationView.imgvBackground.image = #imageLiteral(resourceName: "selected_annotation")
    }
    
    func mapView(_ mapView: MKMapView, didDeselect view: MKAnnotationView) {
        
        objContainerView.isHidden = true
        objContainerView.setVerticalGap(pfltGap: 0)
        let objAnnotationView = view as! PlaceAnnotationView
        objAnnotationView.imgvBackground.image = #imageLiteral(resourceName: "pin")
    }
}
