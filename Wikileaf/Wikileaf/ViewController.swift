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
        objContainerView.addSteps(parrSteps: [self.view.frame.size.height - 166, 166.0])
        objContainerView.isHidden = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}

extension ViewController:MKMapViewDelegate {
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {

        let objAnnotation = Bundle.main.loadNibNamed("PlaceAnnotationView", owner: self, options: nil)?.first as! PlaceAnnotationView
        return objAnnotation
    }
    
    func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
        objContainerView.isHidden = false
        objContainerView.setVerticalGap(pfltGap: 166)
    }
    
    func mapView(_ mapView: MKMapView, didDeselect view: MKAnnotationView) {
        
        objContainerView.isHidden = true
        objContainerView.setVerticalGap(pfltGap: 0)
    }
}
