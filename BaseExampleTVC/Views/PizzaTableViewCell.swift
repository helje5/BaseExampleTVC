//
//  PizzaTableViewCell.swift
//  BaseExampleTVC
//
//  Created by Daniel on 20.02.18.
//  Copyright © 2018 Daniel Siegel. All rights reserved.
//

import UIKit

class PizzaTableViewCell: UITableViewCell, FoodCell {

    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
