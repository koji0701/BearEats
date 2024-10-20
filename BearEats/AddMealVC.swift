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
    
    var mealsList = [String: Meal]()
    var mealNames = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mealPicker.delegate = self
        mealPicker.dataSource = self
    }
    
    func prepareMealsList(incMealsList: [String: Meal]) {
        mealsList = incMealsList
        mealNames = mealsList.keys.sorted()
    }
    
    @IBAction func addMealClicked(_ sender: Any) {
        if let homeVC = tabBarController?.viewControllers![0].children[0] as? HomePageVC {
            
            print("found homeVC")
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
                //print("Selected meal details: \(selectedMeal)")
            }
        }
}
