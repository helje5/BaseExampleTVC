//
//  BurgerTableViewController.swift
//  BaseExampleTVC
//
//  Created by Daniel on 15.02.18.
//  Copyright © 2018 Daniel Siegel. All rights reserved.
//

import UIKit

class BurgerTableViewController: UITableViewController {

  let dataSource = UniformCellTVDataSource<Burger, BurgerTableViewCell>(items: [
      Burger(name: "RoyalTS", veggi: false),
      Burger(name: "Veggi",   veggi: true)
    ], cellID: "burgerCell"
  )
  
  override func viewDidLoad() {
    super.viewDidLoad()
    tableView?.dataSource = dataSource
  }
  
}
