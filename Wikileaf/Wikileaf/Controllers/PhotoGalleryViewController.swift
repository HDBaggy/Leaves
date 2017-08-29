//
//  PhotoGalleryViewController.swift
//  WikiLeafs
//

import UIKit
import EXPhotoViewer
import IDMPhotoBrowser

protocol ImageSelectionDelegate {
    
    func galleryDidSelectPhoto(pobjPhoto:ClsPhoto)
}

class PhotoGalleryViewController: UIViewController, UICollectionViewDelegate {
    
    var arrImages:[ClsPhoto]!
    var objCurrentDispensary:ClsDispensary!
    var delegate:ImageSelectionDelegate!
    
    @IBOutlet weak var objPhotoCollection: UICollectionView!
    @IBOutlet weak var lblNoItem: UILabel!
    @IBOutlet weak var objNavigationBar: UIView!
    
    // MARK: - View Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        initializeOnce()
    }
    
    func updateList(parrPhotos:[ClsPhoto]){
        
        self.arrImages = parrPhotos
//        self.objCollectionSource.arrItems = self.arrImages
        self.objPhotoCollection.delegate = self
        self.objPhotoCollection.reloadData()
        self.lblNoItem.isHidden = (self.arrImages.count > 0)
        self.objPhotoCollection.isHidden = !self.lblNoItem.isHidden
        
    }
    
    @IBAction func btnBackTapped(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    // MARK: - Initializations
    
    func initializeOnce(){
        
//        objNavigationBar.addShadow()
        
        if arrImages == nil {
            arrImages = Array()
        }
        
        configureCollection()
    }
    
    // MARK: - Collectionview Configuration
    
    func configureCollection(){
        
        //let fltContentInset = self.view.frame.size.width * 39/320
        objPhotoCollection.contentInset = UIEdgeInsetsMake(0, 0, 0, 0)
        
      //  objPhotoCollection.contentInset = UIEdgeInsetsMake(fltContentInset - 10, fltContentInset, fltContentInset, fltContentInset - 10)
        
        /*
        objCollectionSource = HDCollectionDataSource(items: arrImages, cellIdentifier: R.reuseIdentifier.photoCell.identifier, configureCellBlock: { (cell, item, indexPath) in
            
            let objCell =  cell as! PhotoGalleryCell
            let objItem = item as! ClsPhoto
              
            objCell.configureCell(objItem)
            
            objCell.layer.masksToBounds = true
            objCell.layer.cornerRadius = 2.5
            objCell.layoutIfNeeded()
        })*/
        
//        objPhotoCollection.dataSource = objCollectionSource
        objPhotoCollection.alwaysBounceVertical = true
        objPhotoCollection.reloadData()
    }
    
    // MARK: - Collection View delegate

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let objSelectedPhoto = self.arrImages[indexPath.item]
        //delegate.galleryDidSelectPhoto(objSelectedPhoto)
        
        var arrPhotoUrl:[NSURL] = Array()
        let intIndex = UInt(self.arrImages.index(of: objSelectedPhoto)!)
        
        for objTmpPhoto in self.arrImages {
            
            arrPhotoUrl.append(NSURL(string: objTmpPhoto.strImageUrl)!)
        }
        
        let arrPhotos = IDMPhoto.photos(withURLs: arrPhotoUrl)
        let objPhotoBrowserController = IDMPhotoBrowser(photos: arrPhotos)
        objPhotoBrowserController?.setInitialPageIndex(intIndex)
        self.present(objPhotoBrowserController!, animated: true, completion: nil)
    }
    
    // MARK: - Memory Management
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension PhotoGalleryViewController:UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrImages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        let objCell = collectionView.dequeueReusableCell(withReuseIdentifier: "photoCell", for: indexPath) as! PhotoGalleryCell
        let objItem = self.arrImages[indexPath.item]
        
        objCell.configureCell(pobjPhoto: objItem)
        
        objCell.layer.masksToBounds = true
        objCell.layer.cornerRadius = 2.5
        objCell.layoutIfNeeded()
        
        return objCell
    }
    
}

extension PhotoGalleryViewController: UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: self.view.frame.size.width/4, height: self.view.frame.size.width/4)
    }
}

