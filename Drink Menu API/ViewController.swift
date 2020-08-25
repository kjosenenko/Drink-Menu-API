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
                    print(downloadedDrinks.drinks[0].strDrink)
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
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Table view cells are reused and should be dequeued using a cell identifier.
        let cellIdentifier = "DrinkCell"
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? DrinkCell  else {
            fatalError("The dequeued cell is not an instance of DrinkCell.")
        }
        
//        Fetches the appropriate drink for the data source layout.
        let drink = drinks[indexPath.row]
        
        cell.drinkName.text = drink.strDrink
        
        cell.contentView.backgroundColor = UIColor.gray
        cell.backgroundColor = UIColor.gray
        
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

