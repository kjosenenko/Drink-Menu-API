//
//  ViewController.swift
//  Drink Menu API
//
//  Created by KJ on 8/24/20.
//  Copyright © 2020 KJ. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
//    API URL
    final let url = URL(string: "https://www.thecocktaildb.com/api/json/v1/1/filter.php?a=Alcoholic")
//    sets variable to meodel
    private var drinks = [Drink]()
//    Table View outlet
    @IBOutlet weak var tableView: UITableView!
    
//    call functions on app start
    override func viewDidLoad() {
        super.viewDidLoad()
        downloadJson()
        tableView.tableFooterView = UIView()
    }

//    GET JSON from API
    func downloadJson() {
        guard let downloadURL = url else { return }
        URLSession.shared.dataTask(with: downloadURL) { data, urlResponse, error in
            guard let data = data, error == nil, urlResponse != nil else {
                print("something is wrong")
                return
            }
            print("downloaded")
            do
            {
                let decoder = JSONDecoder()
                let downloadedDrinks = try decoder.decode(Drinks.self, from: data)
                self.drinks = downloadedDrinks.drinks
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                    print(self.drinks)
                }
            } catch {
                print("something wrong after downloaded")
            }
            }.resume()
    }
    
//    sets number of cells in table
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return drinks.count
    }
    
//    sets JSON data to model
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "DrinkCell") as? DrinkCell else { return UITableViewCell() }
        
        cell.drinkName.text = "Drink: " + drinks[indexPath.row].strDrink
        
        cell.contentView.backgroundColor = UIColor.darkGray
        cell.backgroundColor = UIColor.darkGray
        
//        sets API images to image from model
        if let imageURL = URL(string: drinks[indexPath.row].strDrinkThumb) {
            DispatchQueue.global().async {
                let data = try? Data(contentsOf: imageURL)
                if let data = data {
                    let image = UIImage(data: data)
                    DispatchQueue.main.async {
                        cell.drinkImage.image = image
                    }
                }
            }
        }
        return cell
    }
}

