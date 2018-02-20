//
//  BaseTableViewController.swift
//  BaseExampleTVC
//
//  Created by Daniel on 15.02.18.
//  Copyright © 2018 Daniel Siegel. All rights reserved.
//

import UIKit

class BaseTableViewController: UITableViewController {

    var data = [Food]() {
      didSet {
        tableView?.reloadData()
      }
    }
  
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return data.count
    }
}
