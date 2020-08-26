//
//  Drink.swift
//  Drink Menu API
//
//  Created by KJ on 8/24/20.
//  Copyright © 2020 KJ. All rights reserved.
//

import UIKit

//Drinks class
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


//Description class
struct DrinkDescription: Codable {
    let drinks: [Description]
    
    init(drinks: [Description]) {
        self.drinks = drinks
    }
}

//Description model
struct Description: Codable {
    let strDrink: String?
    let strDrinkAlternate: String?
    let strDrinkES: String?
    let strDrinkDE: String?
    let strDrinkFR: String?
    let strDrinkZH_HANS: String?
    let strDrinkZH_HANT: String?
    let strTags: String?
    let strVideo: String?
    let strCategory: String?
    let strIBA: String?
    let strAlcoholic: String?
    let strGlass: String?
    let strInstructions: String?
    let strInstructionsES: String?
    let strInstructionsDE: String?
    let strInstructionsFR: String?
    let strInstructionsZH_HANS: String?
    let strInstructionsZ_HANT: String?
    let strDrinkThumb: String?
    let strIngredient1: String?
    let strIngredient2: String?
    let strIngredient3: String?
    let strIngredient4: String?
    let strIngredient5: String?
    let strIngredient6: String?
    let strIngredient7: String?
    let strIngredient8: String?
    let strIngredient9: String?
    let strIngredient10: String?
    let strIngredient11: String?
    let strIngredient12: String?
    let strIngredient13: String?
    let strIngredient14: String?
    let strIngredient15: String?
    let strMeasure1: String?
    let strMeasure2: String?
    let strMeasure3: String?
    let strMeasure4: String?
    let strMeasure5: String?
    let strMeasure6: String?
    let strMeasure7: String?
    let strMeasure8: String?
    let strMeasure9: String?
    let strMeasure10: String?
    let strMeasure11: String?
    let strMeasure12: String?
    let strMeasure13: String?
    let strMeasure14: String?
    let strMeasure15: String?
    let strCreativeCommonsConfirmed: String?
    let dateModified: String?
    
    init(
        strDrink: String?,
        strDrinkAlternate: String?,
        strDrinkES: String?,
        strDrinkDE: String?,
        strDrinkFR: String?,
        strDrinkZH_HANS: String?,
        strDrinkZH_HANT: String?,
        strTags: String?,
        strVideo: String?,
        strCategory: String?,
        strIBA: String?,
        strAlcoholic: String?,
        strGlass: String?,
        strInstructions: String?,
        strInstructionsES: String?,
        strInstructionsDE: String?,
        strInstructionsFR: String?,
        strInstructionsZH_HANS: String?,
        strInstructionsZ_HANT: String?,
        strDrinkThumb: String?,
        strIngredient1: String?,
        strIngredient2: String?,
        strIngredient3: String?,
        strIngredient4: String?,
        strIngredient5: String?,
        strIngredient6: String?,
        strIngredient7: String?,
        strIngredient8: String?,
        strIngredient9: String?,
        strIngredient10: String?,
        strIngredient11: String?,
        strIngredient12: String?,
        strIngredient13: String?,
        strIngredient14: String?,
        strIngredient15: String?,
        strMeasure1: String?,
        strMeasure2: String?,
        strMeasure3: String?,
        strMeasure4: String?,
        strMeasure5: String?,
        strMeasure6: String?,
        strMeasure7: String?,
        strMeasure8: String?,
        strMeasure9: String?,
        strMeasure10: String?,
        strMeasure11: String?,
        strMeasure12: String?,
        strMeasure13: String?,
        strMeasure14: String?,
        strMeasure15: String?,
        strCreativeCommonsConfirmed: String?,
        dateModified: String?
        ) {
        self.strDrink = strDrink
        self.strDrinkAlternate = strDrinkAlternate
        self.strDrinkES = strDrinkES
        self.strDrinkDE = strDrinkDE
        self.strDrinkFR = strDrinkFR
        self.strDrinkZH_HANS = strDrinkZH_HANS
        self.strDrinkZH_HANT = strDrinkZH_HANT
        self.strTags = strTags
        self.strVideo = strVideo
        self.strCategory = strCategory
        self.strIBA = strIBA
        self.strAlcoholic = strAlcoholic
        self.strGlass = strGlass
        self.strInstructions = strInstructions
        self.strInstructionsES = strInstructionsES
        self.strInstructionsDE = strInstructionsDE
        self.strInstructionsFR = strInstructionsFR
        self.strInstructionsZH_HANS = strInstructionsZH_HANS
        self.strInstructionsZ_HANT = strInstructionsZ_HANT
        self.strDrinkThumb = strDrinkThumb
        self.strIngredient1 = strIngredient1
        self.strIngredient2 = strIngredient2
        self.strIngredient3 = strIngredient3
        self.strIngredient4 = strIngredient4
        self.strIngredient5 = strIngredient5
        self.strIngredient6 = strIngredient6
        self.strIngredient7 = strIngredient7
        self.strIngredient8 = strIngredient8
        self.strIngredient9 = strIngredient9
        self.strIngredient10 = strIngredient10
        self.strIngredient11 = strIngredient11
        self.strIngredient12 = strIngredient12
        self.strIngredient13 = strIngredient13
        self.strIngredient14 = strIngredient14
        self.strIngredient15 = strIngredient15
        self.strMeasure1 = strMeasure1
        self.strMeasure2 = strMeasure2
        self.strMeasure3 = strMeasure3
        self.strMeasure4 = strMeasure4
        self.strMeasure5 = strMeasure5
        self.strMeasure6 = strMeasure6
        self.strMeasure7 = strMeasure7
        self.strMeasure8 = strMeasure8
        self.strMeasure9 = strMeasure9
        self.strMeasure10 = strMeasure10
        self.strMeasure11 = strMeasure11
        self.strMeasure12 = strMeasure12
        self.strMeasure13 = strMeasure13
        self.strMeasure14 = strMeasure14
        self.strMeasure15 = strMeasure15
        self.strCreativeCommonsConfirmed = strCreativeCommonsConfirmed
        self.dateModified = dateModified
    }
}

