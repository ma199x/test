//
//  FirstCollectionViewCell.swift
//  test
//
//  Created by Mohammed Ali on 04/10/2023.
//

import UIKit

class FirstCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var photo: UIImageView!
    @IBOutlet weak var label: UILabel!
    func setInfo(photo: UIImage , text : String){
        self.photo.image = photo
        self.label.text = text

    }
}
