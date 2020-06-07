//
//  ViewController.swift
//  Menu
//
//  Created by Peem on 7/6/2563 BE.
//  Copyright © 2563 Kittinun Chobtham. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var table: UITableView!
    
     var animalArray = [Animal]()
    var currentAnimalArray = [Animal]()

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpAnimals()

        // Do any additional setup after loading the view.
    }
    private func setUpAnimals() {
        // CATS
        animalArray.append(Animal(name: "ก๋วยเตี๋ยวต้มยำ", image:"ก๋วยเตี๋ยวต้มยำ"))
        animalArray.append(Animal(name: "James", image:"ก๋วยเตี๋ยวต้มยำ"))
        animalArray.append(Animal(name: "Peter", image:"ก๋วยเตี๋ยวต้มยำ"))
        // DOGS
        animalArray.append(Animal(name: "Haywood", image:"ก๋วยเตี๋ยวต้มยำ"))
        animalArray.append(Animal(name: "Shell", image:"ก๋วยเตี๋ยวต้มยำ"))
        animalArray.append(Animal(name: "James", image:"ก๋วยเตี๋ยวต้มยำ"))
        
        currentAnimalArray = animalArray
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return currentAnimalArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as? TableCell else {
            return UITableViewCell()
        }
        cell.foodnameOne.text = currentAnimalArray[indexPath.row].name
        
        cell.imgView.image = UIImage(named:currentAnimalArray[indexPath.row].image)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
class Animal {
    let name: String
    let image: String
  // let category: AnimalType
    
    init(name: String, image: String) {
        self.name = name
       // self.category = category
        self.image = image
    }
}

