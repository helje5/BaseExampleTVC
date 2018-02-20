//
//  File.swift
//  BaseExampleTVC
//
//  Created by Daniel on 15.02.18.
//  Copyright © 2018 Daniel Siegel. All rights reserved.
//

import Foundation

protocol Food {
    var title: String { get set }
}

class Burger: Food {
    var title: String
    var veggi: Bool
    init(name: String, veggi: Bool) {
        self.title = name
        self.veggi = veggi
    }
}

class Pizza: Food {
    var title: String
    var calzone: Bool
    init(name: String, calzone: Bool) {
        self.title = name
        self.calzone = calzone
    }
}
