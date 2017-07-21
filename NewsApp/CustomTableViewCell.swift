//
//  CustomTableViewCell.swift
//  NewsApp
//
//  Created by hahahahahanananana on 2017/06/27.
//  Copyright © 2017年 片岡. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet var myImageview: UIImageView!
    @IBOutlet var myTitleLabel: UILabel!
    @IBOutlet var myDedcriptionLabel: UILabel!
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
  
}
