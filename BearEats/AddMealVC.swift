//
//  AddMealVC.swift
//  BearEats
//
//  Created by Koji Wong on 10/19/24.
//

import Foundation
import UIKit

class AddMealVC: UIViewController {
    
    @IBOutlet weak var mealPicker: UIPickerView!
    
    @IBOutlet weak var fatsProgressBar: GradientHorizontalProgressBar!
    @IBOutlet weak var proteinProgressBar: GradientHorizontalProgressBar!
    
    @IBOutlet weak var caloriesProgressBar: GradientHorizontalProgressBar!
    
    @IBOutlet weak var carbsProgressBar: GradientHorizontalProgressBar!
    
    @IBOutlet weak var proteinFraction: UILabel!
    
    
    @IBOutlet weak var caloriesFraction: UILabel!
    
    @IBOutlet weak var fatsFraction: UILabel!
    @IBOutlet weak var carbsFraction: UILabel!
    
    var mealsList = [String: Meal]()
    var mealNames = [String]()
    var pickedMeal: Meal? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mealPicker.delegate = self
        mealPicker.dataSource = self
        pickedMeal = mealsList[mealNames[0]]
        updateProgress(meal: pickedMeal!)
        
        proteinProgressBar.color = .systemBlue
        caloriesProgressBar.color = .systemGreen
        fatsProgressBar.color = .systemOrange
        
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

    
    func prepareMealsList(incMealsList: [String: Meal]) {
        mealsList = incMealsList
        mealNames = mealsList.keys.sorted()
    }
    
    @IBAction func addMealClicked(_ sender: Any) {
        
        if let homeVC = navigationController?.viewControllers[0].children[0] as? HomePageVC{
            
            homeVC.addMeal(addedMeal: pickedMeal!)
        }
        
        navigationController?.popViewController(animated: true)
    }
}

extension AddMealVC: UIPickerViewDelegate, UIPickerViewDataSource {
    
    // MARK: - UIPickerViewDataSource Methods
        
        func numberOfComponents(in pickerView: UIPickerView) -> Int {
            return 1 // Single column picker
        }
        
        func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            return mealNames.count // Number of meal names
        }
        
        // MARK: - UIPickerViewDelegate Methods
        
        func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
            return mealNames[row] // Display the meal name for the given row
        }
        
        func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
            // Handle the selection of a meal
            let selectedMealName = mealNames[row]
            //print("Selected meal: \(selectedMealName)")
            // You can use the selected meal name to get the corresponding Meal object from mealsList if needed
            if let selectedMeal = mealsList[selectedMealName] {
                // Do something with the selected Meal object
                pickedMeal = selectedMeal
                updateProgress(meal: pickedMeal!)
            }
        }
}
