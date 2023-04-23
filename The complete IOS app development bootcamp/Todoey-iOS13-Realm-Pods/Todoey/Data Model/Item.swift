//
//  Item.swift
//  Todoey
//
//  Created by yaowenjing16 on 2021/11/22.
//  Copyright © 2021 App Brewery. All rights reserved.
//

import Foundation
import RealmSwift

class Item: Object {
    @objc dynamic var title: String = ""
    @objc dynamic var dateCreated: Date?
    @objc dynamic var done: Bool = false
    @objc dynamic var color: String = ""
    var parentCategory = LinkingObjects(fromType:Category.self,property:"items")
}
