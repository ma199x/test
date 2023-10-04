//
//  TableViewCell.swift
//  test
//
//  Created by Mohammed Ali on 02/10/2023.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var btn: UIButton!
    @IBOutlet weak var photo: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    func setUp(_name : String , _photo :UIImage , _price :Double)
    {
        name.text = _name
        price.text = "\(_price) $ "
        photo.image = _photo
    }

}
