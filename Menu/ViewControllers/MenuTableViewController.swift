//
//  MenuTableViewController.swift
//  Menu
//
//  Created by Kittinun Chobtham on 6/6/2563 BE.
//  Copyright © 2563 Kittinun Chobtham. All rights reserved.
//

import UIKit

class MenuTableViewController: UITableViewController, UITableViewDataSource, UITableViewDelegate, UISearchBarDelegate {

    @IBOutlet var table: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    var foodArray = [Food]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpFood()
        setUpSearchBar()
        
    }
    
    private func setUpFood(){
        foodArray.append(Food(name:"ก๋วยเตี๋ยวต้มยำ", category: .nooddle, image: "ก๋วยเตี๋ยวต้มยำ"))
        foodArray.append(Food(name:"ก๋วยเตี๋ยวต้มยำ", category: .nooddle, image: "ก๋วยเตี๋ยวต้มยำ"))
        foodArray.append(Food(name:"ก๋วยเตี๋ยวต้มยำ", category: .nooddle, image: "ก๋วยเตี๋ยวต้มยำ"))
        foodArray.append(Food(name:"ก๋วยเตี๋ยวต้มยำ", category: .nooddle, image: "ก๋วยเตี๋ยวต้มยำ"))
        foodArray.append(Food(name:"ก๋วยเตี๋ยวต้มยำ", category: .nooddle, image: "ก๋วยเตี๋ยวต้มยำ"))
        foodArray.append(Food(name:"ก๋วยเตี๋ยวต้มยำ", category: .nooddle, image: "ก๋วยเตี๋ยวต้มยำ"))
    }
    private func setUpSearchBar()
    
    private func setUpSearchBar(optional func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String)){
        
    }
    func searchBar(_ searchBar: UISearchBar, selectedScopeButtonIndexDidChange selectedScope: Int)
   
    
    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return foodArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as? TableCell; else do {
            return UITableViewCel()
        }
        cell?.foodnameOne = foodArray[indexPath.row].name
        cell?.info.text = foodArray[indexPath.row].category.rawValue
        cell?.imgView.image = UIImage(named:foodArray[indexPath.row].name)
        return cell ??
    
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }

}

class Food {
    let name: String
    let image: String
    let category: Foodtype
    
    init(name: String, category: Foodtype, image: String ){
        self.name = name
        self.category = category
        self.image = image
    }
}

enum Foodtype: String{
    case rice = "Rice"
    case nooddle = "Nooddle"
}
