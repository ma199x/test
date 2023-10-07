//
//  TCTableViewCell.swift
//  test
//
//  Created by Mohammed Ali on 07/10/2023.
//

import UIKit

class TCTableViewCell: UITableViewCell ,UICollectionViewDelegate,UICollectionViewDataSource {
    
    var img = [UIImage]()
    @IBOutlet weak var collection: UICollectionView!
    @IBOutlet weak var lab: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        collection.delegate = self
        collection.dataSource = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func setInfo(img:[UIImage],title:String)
    {
        self.lab.text = title
        self.img = img
        
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return img.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let item = collection.dequeueReusableCell(withReuseIdentifier: "itemName", for: indexPath) as! TCCollectionViewCell
        item.imgInCollection.image = img[indexPath.row]
        return item
    }
    

}
