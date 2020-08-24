//
//  DrinkCell.swift
//  Drink Menu API
//
//  Created by KJ on 8/24/20.
//  Copyright © 2020 KJ. All rights reserved.
//

import UIKit

class DrinkCell: UITableViewCell {

//    outlets for strDrink & strDrinkThumb
    @IBOutlet weak var drinkName: UILabel!
    @IBOutlet weak var drinkImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
