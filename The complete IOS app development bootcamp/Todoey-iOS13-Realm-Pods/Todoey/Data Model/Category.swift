//
//  Category.swift
//  Todoey
//
//  Created by yaowenjing16 on 2021/11/22.
//  Copyright © 2021 App Brewery. All rights reserved.
//

import Foundation
import RealmSwift

class Category: Object {
    @objc dynamic var name: String = ""
    let items = List<Item>()
    //now the items is an empty list of Item objects and it essentially defines the forward relationship
    @objc dynamic var color: String = ""
}
