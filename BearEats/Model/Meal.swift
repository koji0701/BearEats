//
//  MacrosModel.swift
//  BearEats
//
//  Created by Koji Wong on 10/18/24.
//

import Foundation
//import SwiftData


//@Model
struct Meal {
    let calories: Double
    let protein: Double
    let fats: Double
    let carbs: Double
    
    let mealName: String
    let date: Date
    let time: String
    
    init(mealName: String, calories: Double, protein: Double, fats: Double, carbs: Double, date: Date? = Date()) {
        self.calories = calories
        self.protein = protein
        self.fats = fats
        self.carbs = carbs
        self.mealName = mealName
        self.date = date ?? Date()
        
        let formatter = DateFormatter()
        formatter.dateFormat = "h:mm a"
        self.time = formatter.string(from: self.date)
    }
    
}
