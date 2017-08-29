//
//  PhotoGalleryCell.swift
//  WikiLeafs
//

import UIKit
import AlamofireImage

class PhotoGalleryCell: UICollectionViewCell {
    
    @IBOutlet weak var imgvPhoto: UIImageView!
    
    func configureCell(pobjPhoto:ClsPhoto){

        if pobjPhoto.strImageUrl.lengthOfBytes(using: .utf8) > 0 {
            
            imgvPhoto.sd_setImage(with: URL(string: pobjPhoto.strImageUrl)!, placeholderImage: nil)
        }
    }
}
