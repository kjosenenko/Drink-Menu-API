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
    
    @IBOutlet weak var alert: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBAction func alert(_ sender: Any) {
        let alertController = UIAlertController(title: "iOScreator", message:
            "Hello, world!", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))
        
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
