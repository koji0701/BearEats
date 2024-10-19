//
//  Menu.swift
//  BearEats
//
//  Created by Koji Wong on 10/18/24.
//

import Foundation

//structure to store all of the restaurants, which have all of the meal
struct Menu {
    static var beastcraft = Restaurant(restaurantName: "beastcraft", menu: [
        "Harvest Slider": Meal(mealName: "Harvest Slider", calories: 275, protein: 17, fats: 9, carbs: 32)
    ])
    
    
}
