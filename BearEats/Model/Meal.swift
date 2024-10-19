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
    let fats: Int
    let carbs: Int
    
    let mealName: String
    
    init(mealName: String, calories: Int, protein: Int, fats: Int, carbs: Int) {
        self.calories = calories
        self.protein = protein
        self.fats = fats
        self.carbs = carbs
        self.mealName = mealName
    }
}
