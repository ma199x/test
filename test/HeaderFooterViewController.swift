//
//  HeaderFooterViewController.swift
//  test
//
//  Created by Mohammed Ali on 05/10/2023.
//

import UIKit

class HeaderFooterViewController: UIViewController ,UICollectionViewDelegate , UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var collection: UICollectionView!
    var arr = [photo(name: "1", image: [UIImage(named: "p1")!,UIImage(named: "p2")!,UIImage(named: "p3")!,UIImage(named: "1")!]),
    photo(name: "2", image: [UIImage(named: "p4")!])]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collection.dataSource = self
        collection.delegate = self
    }
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return arr.count
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arr[section].image.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collection.dequeueReusableCell(withReuseIdentifier: "cellName", for: indexPath) as! HeaderFooterCollectionViewCell
        
        cell.imgInView.image = arr[indexPath.section].image[indexPath.row]
        cell.backgroundColor = UIColor.lightGray
        cell.layer.cornerRadius = 12
        cell.imgInView.layer.cornerRadius = 10
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: collection.frame.width * 0.3, height: collection.frame.height * 0.2)
    }
    
    
    // kind can be header and footer
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        if kind == UICollectionView.elementKindSectionHeader{
            let header = collection.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "headerName", for: indexPath) as! HeaderFooterCollectionReusableView
            header.headerInView.text = arr[indexPath.section].name
            return header
        }
        else {
            let footer = collection.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "footerName", for: indexPath)
            footer.backgroundColor = UIColor.brown
            return footer
        }
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 5)
    }
}

struct photo{
    var name :String
    var image :[UIImage]
}

