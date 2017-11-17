//
//  TableViewCell.swift
//  PuneLandmark
//
//  Created by Sharad on 16/11/17.
//  Copyright © 2017 Sharad. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet var cellImageView: UIImageView!
    
    @IBOutlet var cellTitleLabel: UILabel!
    
    @IBOutlet var cellDescriptionLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
