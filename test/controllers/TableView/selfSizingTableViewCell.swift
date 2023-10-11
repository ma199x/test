//
//  selfSizingTableViewCell.swift
//  test
//
//  Created by Mohammed Ali on 03/10/2023.
//

import UIKit

class selfSizingTableViewCell: UITableViewCell {

    @IBOutlet weak var photo: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
