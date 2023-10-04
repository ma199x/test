//
//  verticalcollectionCollectionViewCell.swift
//  test
//
//  Created by Mohammed Ali on 04/10/2023.
//

import UIKit

class verticalcollectionCollectionViewCell:
{
    @IBOutlet weak var photo: UIImageView!
    func setInfo(photo:UIImage){
        self.photo.image = photo
    }
}
