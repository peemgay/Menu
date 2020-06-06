//
//  TableCell.swift
//  Menu
//
//  Created by Peem on 6/6/2563 BE.
//  Copyright © 2563 Kittinun Chobtham. All rights reserved.
//

import UIKit

class TableCell: UITableViewCell {
   
    @IBOutlet var imgView: UIImageView!
     @IBOutlet var foodnameOne: UILabel!
    @IBOutlet var info: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
