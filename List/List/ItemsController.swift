//
//  ItemsController.swift
//  List
//
//  Created by Zack Hitchcock on 4/3/19.
//  Copyright © 2019 Zack Hitchcock. All rights reserved.
//

import Foundation

class ItemsController {
    var items: [String] = []
    
    func add(_ item: String) {
        // add the item to your items list
        items.append(item)
    }
    
    func resetItems() {
        // reset your items list here
        items.removeAll()
    }

}
