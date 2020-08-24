//
//  Drink.swift
//  Drink Menu API
//
//  Created by KJ on 8/24/20.
//  Copyright © 2020 KJ. All rights reserved.
//

import UIKit

//Drinks model
struct Drinks: Codable {
    let drinks: [Drink]
    
    init(drinks: [Drink]) {
        self.drinks = drinks
    }
}

//Drink model
struct Drink: Codable {
    let strDrink: String
    let strDrinkThumb: String
    let idDrink: String
    
    init(strDrink: String, strDrinkThumb: String, idDrink: String) {
        self.strDrink = strDrink
        self.strDrinkThumb = strDrinkThumb
        self.idDrink = idDrink
    }
}


