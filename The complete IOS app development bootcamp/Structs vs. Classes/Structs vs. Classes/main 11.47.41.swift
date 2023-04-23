//
//  main.swift
//  Structs vs. Classes
//
//  Created by yaowenjing16 on 2021/12/3.
//

import Foundation

var hero = StructHero(name: "Iron Man", universe: "Marvel")

var anotherHero = hero
anotherHero.name = "Lily"

print("hero's name is \(hero.name)")
print("anotherHero's name is \(anotherHero.name)")

