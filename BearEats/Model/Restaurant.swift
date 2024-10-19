//
//  Restaurant.swift
//  BearEats
//
//  Created by Koji Wong on 10/18/24.
//

import Foundation

struct Restaurant {
    let menu: [String: Meal] //mealName : Meal
    let restaurantName: String
    
    init (restaurantName: String, menu: [String: Meal]) {
        self.menu = menu
        self.restaurantName = restaurantName
    }
    

}
