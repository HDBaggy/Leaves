//
//  PlaceAnnotationView.swift
//  WikiLeafs
//

import UIKit
import MapKit

class PlaceAnnotationView: MKAnnotationView {
    
    var intId = 0
    
    @IBOutlet weak var lblPrice: UILabel!
    @IBOutlet weak var imgvBackground: UIImageView!
    
    /*
    func configureAnnotation(pobjDispensary:ClsDispensary){
       
    }
    */
    
    func updateAsSelected(pBolIsSelected:Bool){
        
    }
}
