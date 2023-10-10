//
//  firstCollectionViewController.swift
//  test
//
//  Created by Mohammed Ali on 04/10/2023.
//

import UIKit

class firstCollectionViewController: UIViewController , UICollectionViewDelegate , UICollectionViewDataSource , UICollectionViewDelegateFlowLayout{
    
    var arr:[plant] = [plant(photo: UIImage(named: "p4")!, text: "1"),plant(photo: UIImage(named: "p4")!, text: "2"),plant(photo: UIImage(named: "p4")!, text: "3"),plant(photo: UIImage(named: "p4")!, text: "4"),plant(photo: UIImage(named: "p4")!, text: "5"),plant(photo: UIImage(named: "p4")!, text: "6"),plant(photo: UIImage(named: "p4")!, text: "7"),plant(photo: UIImage(named: "p4")!, text: "8")]
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
//        collectionView.collectionViewLayout = UICollectionViewLayout()

        // Do any additional setup after loading the view.
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arr.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellName", for:     indexPath) as! FirstCollectionViewCell
        
        cell.layer.cornerRadius = 12.0
        cell.photo.layer.cornerRadius = 10.0
        cell.backgroundColor = UIColor.orange
        let data = arr[indexPath.row]
        cell.setInfo(photo: data.photo, text: data.text)
        return cell
    }
    
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let cellWidth = self.view.frame.width
        let cellHeight = self.view.frame.height * 0.3
        return CGSize(width: cellWidth, height: cellHeight) // not work  when add constraints
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 20 // for row
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 10 // for column
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
    }
    
    
}

struct plant {
    var photo : UIImage
    var text : String
}
