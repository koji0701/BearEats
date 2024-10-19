//
//  MacrosModel.swift
//  BearEats
//
//  Created by Koji Wong on 10/18/24.
//

import Foundation

//this is a data structure to store nutritional information about each meal
struct Meal {
    let calories: Int
    let protein: Int
    let fat: Int
    let carbs: Int
    
    let mealName: String
    let restaurantName: String
    
    init(mealName: String, restaurantName: String, calories: Int, protein: Int, fat: Int, carbs: Int) {
        self.calories = calories
        self.protein = protein
        self.fat = fat
        self.carbs = carbs
        self.mealName = mealName
        self.restaurantName = restaurantName
    }
}
