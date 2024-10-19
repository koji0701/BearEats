//
//  MacrosModel.swift
//  BearEats
//
//  Created by Koji Wong on 10/18/24.
//

import Foundation

// is a data structure to store nutritional information about each meal
struct Meal {
    let calories: Double
    let protein: Double
    let fats: Double
    let carbs: Double
    
    let mealName: String
    let date: Date
    
    
    init(mealName: String, calories: Double, protein: Double, fats: Double, carbs: Double) {
        self.calories = calories
        self.protein = protein
        self.fats = fats
        self.carbs = carbs
        self.mealName = mealName
        self.date = Date()
    }
    
    func addMeal() {
        CurrentMacros.calories += calories
        CurrentMacros.protein += protein
        CurrentMacros.fats += fats
        CurrentMacros.carbs += carbs
        
    }
}
