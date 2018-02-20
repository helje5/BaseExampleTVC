//
//  BurgerTableViewController.swift
//  BaseExampleTVC
//
//  Created by Daniel on 15.02.18.
//  Copyright © 2018 Daniel Siegel. All rights reserved.
//

import UIKit

class BurgerTableViewController: BaseTableViewController {

    var data = [Burger]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let royalTS = Burger(name: "RoyalTS", veggi: false)
        let veggi = Burger(name: "Veggi", veggi: true)
        
        data.append(royalTS)
        data.append(veggi)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "burgerCell", for: indexPath) as! BurgerTableViewCell
        cell.titleLabel.text = data[indexPath.row].title
        return cell
    }
    
}
