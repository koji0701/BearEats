//
//  SettingsVC.swift
//  BearEats
//
//  Created by Koji Wong on 10/19/24.
//


import Foundation
import UIKit

class SettingsVC: UIViewController {
    @IBOutlet weak var caloriesTF: UITextField!
    
    @IBOutlet weak var proteinTF: UITextField!
    
    @IBOutlet weak var carbsTF: UITextField!
    
    @IBOutlet weak var fatsTF: UITextField!
    
    
    let defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        caloriesTF.text = String(Goals.calories)
        carbsTF.text = String(Goals.carbs)
        proteinTF.text = String(Goals.protein)
        fatsTF.text = String(Goals.fats)
        self.initializeHideKeyboard()
    }
    //t
    @IBAction func caloriesEditingEnd(_ sender: Any) {
        editingDidEnd(tf: caloriesTF, goal: &Goals.calories, key: "goalsCalories")
    }
    
    @IBAction func proteinEditingEnd(_ sender: Any) {
        editingDidEnd(tf: proteinTF, goal: &Goals.protein, key: "goalsProtein")
    }
    
    @IBAction func carbsEditingEnd(_ sender: Any) {
        editingDidEnd(tf: carbsTF, goal: &Goals.carbs, key: "goalsCarbs")
    }
    
    @IBAction func fatsEditingEnd(_ sender: Any) {
        editingDidEnd(tf: fatsTF, goal: &Goals.fats, key: "goalsFats")
    }
    
    private func editingDidEnd(tf: UITextField, goal: inout Double, key: String) {
        if let val = Double(tf.text!) {
            goal = val
            defaults.set(val, forKey: key)
        }
        else {
            tf.text = String(goal)
        }
    }
    
    
    
}

extension UIViewController {
    func initializeHideKeyboard() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(
        target: self,
        action: #selector(UIViewController.dismissMyKeyboard))
        
        view.addGestureRecognizer(tap)
    }
    @objc func dismissMyKeyboard() {
        view.endEditing(true)
    }
}
