//
//  PizzaTableViewController.swift
//  BaseExampleTVC
//
//  Created by Daniel on 15.02.18.
//  Copyright © 2018 Daniel Siegel. All rights reserved.
//

import UIKit

class PizzaTableViewController: BaseTableViewController {

    var data = [Pizza]()

    override func viewDidLoad() {
        super.viewDidLoad()

        let hawaii = Pizza(name: "Hawaii", calzone: false)
        let calzone = Pizza(name: "Calzobne", calzone: true)
        
        data.append(hawaii)
        data.append(calzone)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "pizzaCell", for: indexPath) as! PizzaTableViewCell
        cell.titleLabel.text = data[indexPath.row].title
        return cell
    }



}
