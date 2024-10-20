//
//  RecommendationAlgorithm.swift
//  BearEats
//
//  Created by Koji Wong on 10/20/24.
//
import Foundation
//t
class RecommendationAlgorithm {
    
    static var mealsInOrder = [Meal]()
    
    static var mealsAreSorted = false
    
    
    
    func recMeal() -> Meal? {
        if CurrentMacros.calories >= Goals.calories && CurrentMacros.carbs >= Goals.carbs && CurrentMacros.protein >= Goals.protein && CurrentMacros.fats >= Goals.fats {
            return nil //to account for when already over macros
        }
        
        if RecommendationAlgorithm.mealsAreSorted {
            return RecommendationAlgorithm.mealsInOrder.removeLast()
            
        }
        let allMenus = [
                Menu.BD.menu.values,
                Menu.Beverages.menu.values,
                Menu.DUC.menu.values,
                Menu.Bergson.menu.values,
                Menu.Subway.menu.values,
                Menu.beastcraft.menu.values
            ]
            .compactMap { $0 } // Unwraps optional arrays, if needed
            .flatMap { $0 } // Combines all arrays into a single array

        RecommendationAlgorithm.mealsInOrder = allMenus
        
        RecommendationAlgorithm.mealsInOrder.sort { (meal1, meal2) -> Bool in
            let distance1 = calcEuclidian(meal: meal1)
            let distance2 = calcEuclidian(meal: meal2)
            
            return distance1 > distance2 //ascending order
        }
        
        RecommendationAlgorithm.mealsAreSorted = true
        
        return RecommendationAlgorithm.mealsInOrder.removeLast() //quick note: removing last from array is faster than removing first
        
        
    }
    
    func calcEuclidian(meal: Meal) -> Double {
        let desiredCalories = Goals.calories - CurrentMacros.calories
        let desiredProteins = Goals.protein - CurrentMacros.protein
        let desiredCarbs = Goals.carbs - CurrentMacros.carbs
        let desiredFats = Goals.fats - CurrentMacros.fats
        return  sqrt(pow(meal.calories-desiredCalories,2)+pow(meal.protein-desiredProteins,2)+pow(meal.carbs-desiredCarbs,2)+pow( meal.fats-desiredFats,2))
    }
}
