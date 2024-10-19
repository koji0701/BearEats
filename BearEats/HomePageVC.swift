//
//  ViewController.swift
//  BearEats
//
//  Created by Koji Wong on 10/18/24.
//

import UIKit
import CoreData

class HomePageVC: UIViewController {
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext //context globally for this
    
    let meals = [Meal]()
    
    @IBOutlet weak var proteinProgressBar: GradientHorizontalProgressBar!
    
    @IBOutlet weak var proteinFractionLabel: UILabel!
    
    @IBOutlet weak var caloriesFractionLabel: UILabel!
    
    @IBOutlet weak var caloriesProgressBar: GradientHorizontalProgressBar!
    
    @IBOutlet weak var carbsFractionLabel: UILabel!
    
    @IBOutlet weak var carbsProgressBar: GradientHorizontalProgressBar!
    
    @IBOutlet weak var fatsFractionLabel: UILabel!
    
    @IBOutlet weak var fatsProgressBar: GradientHorizontalProgressBar!
    
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        refreshProgressBars()
        
        
    }
    
    
    @IBAction func settingsClicked(_ sender: Any) {
        performSegue(withIdentifier: "HomeToSettings", sender: self)
    }
    
    func saveContext() {
        do {
            try context.save()
            print("context is saved")
        }
        catch {
            print("error saving context \(error)")
        }
    }
    
    func refreshProgressBars() {
        proteinProgressBar.progress = CGFloat(CurrentMacros.protein) / CGFloat(Goals.protein)
        proteinFractionLabel.text = "\(CurrentMacros.protein) / \(Goals.protein)"
        
        carbsProgressBar.progress = CGFloat(CurrentMacros.carbs) / CGFloat(Goals.carbs)
        carbsFractionLabel.text = "\(CurrentMacros.carbs) / \(Goals.carbs)"
        
        caloriesProgressBar.progress = CGFloat(CurrentMacros.calories) / CGFloat(Goals.calories)
        caloriesFractionLabel.text = "\(CurrentMacros.calories) / \(Goals.calories)"
        
        fatsProgressBar.progress = CGFloat(CurrentMacros.fats) / CGFloat(Goals.fats)
        fatsFractionLabel.text = "\(CurrentMacros.fats) / \(Goals.fats)"
    }
    
}


