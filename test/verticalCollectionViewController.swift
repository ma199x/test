//
//  verticalCollectionViewController.swift
//  test
//
//  Created by Mohammed Ali on 04/10/2023.
//

import UIKit

class verticalCollectionViewController: UIViewController ,UICollectionViewDelegate , UICollectionViewDataSource , UICollectionViewDelegateFlowLayout{
    var  arr = [UIImage(named: "p4"),UIImage(named: "p4"),UIImage(named: "p4"),UIImage(named: "p4")]
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arr.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellName", for: indexPath) as! verticalcollectionCollectionViewCell

        
        return cell
    }


}
