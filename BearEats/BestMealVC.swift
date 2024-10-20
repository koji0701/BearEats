//
//  BestMealVC.swift
//  BearEats
//
//  Created by Koji Wong on 10/20/24.
//

import Foundation
import UIKit

//implement best meal thing, code is already written in the pickrestaurant comments as well as the addmeal progress bars
//make sure to connect this class to the storyboard as well
//add a suggest another meal button too

class BestMealVC: UIViewController {
    
    @IBOutlet weak var bestFood: UILabel!
    
    @IBOutlet weak var fitsInMacrosLabel: UILabel!
    
    @IBOutlet weak var macroStackView: UIStackView!
        
    
    @IBOutlet weak var proteinProgressBar: GradientHorizontalProgressBar!
    
    @IBOutlet weak var caloriesProgressBar: GradientHorizontalProgressBar!
    
    @IBOutlet weak var carbsProgressBar: GradientHorizontalProgressBar!
    
    @IBOutlet weak var fatsProgressBar: GradientHorizontalProgressBar!
    
    @IBOutlet weak var proteinFraction: UILabel!
    
    @IBOutlet weak var caloriesFraction: UILabel!
    
    @IBOutlet weak var carbsFraction: UILabel!
    
    @IBOutlet weak var fatsFraction: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makeRec()
        
        proteinProgressBar.color = .systemBlue
        caloriesProgressBar.color = .systemGreen
        fatsProgressBar.color = .systemOrange
        
        
    }
    
    @IBAction func suggestionIsClicked(_ sender: Any) {
        makeRec()
    }
    func makeRec() {
        
        let rec = RecommendationAlgorithm()
        let bestMeal = rec.recMeal()
        
        if bestMeal != nil{
            bestFood.text = "\(bestMeal!.mealName)"
            updateProgress(meal: bestMeal!)
            //suggestMealButton.titleLabel?.text = "Suggest another meal!"
        }
        else {
            fitsInMacrosLabel.isHidden = true
            macroStackView.isHidden = true
            
            bestFood.text = "No meal suggestion, you've hit today's macro goals!"
            
        }
    }
    
    private func updateProgress(meal: Meal) {
        let desiredProtein = max(Goals.protein - CurrentMacros.protein, 0)
        let desiredCarbs = max(Goals.carbs - CurrentMacros.carbs, 0)
        let desiredFats = max(Goals.fats - CurrentMacros.fats, 0)
        let desiredCalories = max(Goals.calories - CurrentMacros.calories, 0)

        // Round values to the nearest integer
        let roundedMealProtein = Int(round(meal.protein))
        let roundedMealCarbs = Int(round(meal.carbs))
        let roundedMealFats = Int(round(meal.fats))
        let roundedMealCalories = Int(round(meal.calories))

        proteinFraction.text = "\(roundedMealProtein) / \(Int(round(desiredProtein)))"
        carbsFraction.text = "\(roundedMealCarbs) / \(Int(round(desiredCarbs)))"
        fatsFraction.text = "\(roundedMealFats) / \(Int(round(desiredFats)))"
        caloriesFraction.text = "\(roundedMealCalories) / \(Int(round(desiredCalories)))"

        // Calculate progress, avoiding divide by zero
        proteinProgressBar.progress = desiredProtein > 0 ? CGFloat(roundedMealProtein) / CGFloat(desiredProtein) : 1.0
        carbsProgressBar.progress = desiredCarbs > 0 ? CGFloat(roundedMealCarbs) / CGFloat(desiredCarbs) : 1.0
        fatsProgressBar.progress = desiredFats > 0 ? CGFloat(roundedMealFats) / CGFloat(desiredFats) : 1.0
        caloriesProgressBar.progress = desiredCalories > 0 ? CGFloat(roundedMealCalories) / CGFloat(desiredCalories) : 1.0
    }

    
}
