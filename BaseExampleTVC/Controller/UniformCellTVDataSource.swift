//
//  ArrayDataSource.swift
//  BaseExampleTVC
//
//  Created by Helge Hess on 20.02.18.
//  Copyright © 2018 Daniel Siegel. All rights reserved.
//

import UIKit

class UniformCellTVDataSource<Model: Food, Cell: FoodCell>
        : NSObject, UITableViewDataSource
{
  // a datasource in UIKit is no real MVC datasource but a fuck-up
  // of a view factory and a datasource (presumably for performance
  // reasons back in iOS 1.0)
  
  let arrangedObjects : [ Model ]
  let cellID          : String
  
  init(items: [ Model ], cellID: String) {
    self.arrangedObjects = items
    self.cellID          = cellID
  }
  
  // MARK: - Table view data source
  
  func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }
  
  func tableView(_ tableView: UITableView,
                 numberOfRowsInSection section: Int) -> Int
  {
    return arrangedObjects.count
  }

  func tableView(_ tableView: UITableView,
                 cellForRowAt indexPath: IndexPath) -> UITableViewCell
  {
    let cell = tableView.dequeueReusableCell(withIdentifier: cellID,
                                             for: indexPath)
    if let cell = cell as? Cell {
      cell.titleLabel.text = arrangedObjects[indexPath.row].title
    }
    return cell
  }
}
