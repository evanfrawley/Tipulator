//
//  NameTableViewCell.swift
//  Tipulator
//
//  Created by Evan J. Frawley on 12/15/15.
//  Copyright (c) 2015 Evan J. Frawley. All rights reserved.
//

import UIKit

class NameTableViewCell: UITableViewCell {

    
    @IBOutlet weak var nameLabel: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
