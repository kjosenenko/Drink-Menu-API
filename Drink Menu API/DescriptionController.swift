//
//  DescriptionController.swift
//  Drink Menu API
//
//  Created by Shannon on 8/25/20.
//  Copyright © 2020 KJ. All rights reserved.
//

import UIKit

class DescriptionController: UIViewController {

//    outlets for description objects
    @IBOutlet weak var descriptLabel: UILabel!
    @IBOutlet weak var descriptGlass: UILabel!
    @IBOutlet weak var descriptImage: UIImageView!
    @IBOutlet weak var descriptInstruct: UILabel!
    
    //    API URLs
    final let descriptionUrl = URL(string: "https://www.thecocktaildb.com/api/json/v1/1/lookup.php?i=" + urlId)
    
    //    sets variable to model
    private var drinkDescription = [Description]()
    
//    call functions on app start
    override func viewDidLoad() {
        super.viewDidLoad()
        downloadJson()

    }
    
    //    GET JSON from API
    func downloadJson() {
        guard let downloadDescriptionURL = descriptionUrl else { return }
        URLSession.shared.dataTask(with: downloadDescriptionURL) { data, urlResponse, error in
            guard let data = data, error == nil, urlResponse != nil else {
                print("something is wrong")
                return
            }
            print("downloaded")
            do
            {
                let decoder = JSONDecoder()
                let downloadedDescription = try decoder.decode(DrinkDescription.self, from: data)
                self.drinkDescription = downloadedDescription.drinks
                DispatchQueue.main.async {
                    for drink in self.drinkDescription{
                        
//                        sets JSON to output objects
                        self.descriptLabel.text = drink.strDrink
                        self.descriptGlass.text = drink.strGlass
                        self.descriptInstruct.text = drink.strInstructions
                        
//                        sets URL string from JSON to imageView
                        if let imageURL = URL(string: drink.strDrinkThumb!) {
                            DispatchQueue.global().async {
                                let data = try? Data(contentsOf: imageURL)
                                if let data = data {
                                    let image = UIImage(data: data)
                                    DispatchQueue.main.async {
                                        self.descriptImage.image = image
                                    }
                                }
                            }
                        }
                    }
                }
            } catch {
                print("something wrong after download")
            }
            }.resume()
    }
    
}
