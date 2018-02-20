//
//  PizzaTableViewController.swift
//  BaseExampleTVC
//
//  Created by Daniel on 15.02.18.
//  Copyright © 2018 Daniel Siegel. All rights reserved.
//

import UIKit

class PizzaTableViewController: UITableViewController {
  
    let dataSource = UniformCellTVDataSource<Pizza, PizzaTableViewCell>(items: [
        Pizza(name: "Hawaii", calzone: false),
        Pizza(name: "Calzobne", calzone: true)
    ], cellID: "pizzaCell")

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView?.dataSource = dataSource
    }
}
