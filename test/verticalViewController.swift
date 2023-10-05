//
//  verticalViewController.swift
//  test
//
//  Created by Mohammed Ali on 05/10/2023.
//

import UIKit

class verticalViewController: UIViewController ,UICollectionViewDelegate , UICollectionViewDataSource , UICollectionViewDelegateFlowLayout{
 
    var arr = [UIImage(named: "p4")!,UIImage(named:"p4")!]
    var timer = Timer()
    var currentCellIndex = 0
    
    
    @IBOutlet weak var pageColntrol: UIPageControl!
    @IBOutlet weak var collection: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collection.delegate = self
        collection.dataSource = self
        
        pageColntrol.numberOfPages = arr.count
        
        
        startTimer()
    }
    
    func startTimer()
    {
        timer = Timer.scheduledTimer(timeInterval: 2.5, target: self, selector: #selector(nextImage), userInfo: nil, repeats: true)
     
    }
    @objc func nextImage()
    {
        print("arr.count \(arr.count) ")
        if currentCellIndex == arr.count - 1
        {
             currentCellIndex = 0
        }
        else {
            currentCellIndex += 1
        }
        
        collection.scrollToItem(at: IndexPath(item: currentCellIndex, section: 0 ), at: .centeredHorizontally, animated: true)
        pageColntrol.currentPage = currentCellIndex
        
        
    }
    
    
    // collecton view function
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arr.count
        
    }
    // fill cells
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collection.dequeueReusableCell(withReuseIdentifier: "cellName", for: indexPath) as! verticalCollectionViewCell
        cell.backgroundColor = UIColor.gray
        cell.photo.image = arr[indexPath.row]
        return cell
    }
    
    //size of cell
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collection.frame.width , height: collection.frame.height)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0.0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }

}
