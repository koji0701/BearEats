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
    
    @IBOutlet weak var proteinProgressBar: GradientHorizontalProgressBar!
    
    @IBOutlet weak var proteinFractionLabel: UILabel!
    
    @IBOutlet weak var caloriesFractionLabel: UILabel!
    
    @IBOutlet weak var caloriesProgressBar: GradientHorizontalProgressBar!
    
    @IBOutlet weak var carbsFractionLabel: UILabel!
    
    @IBOutlet weak var carbsProgressBar: GradientHorizontalProgressBar!
    
    @IBOutlet weak var fatsFractionLabel: UILabel!
    
    @IBOutlet weak var fatsProgressBar: GradientHorizontalProgressBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //proteinProgressBar.progress = CGFloat(CurrentMacros.protein) / CGFloat(Goals.protein)
        //proteinFractionLabel.text = "\(CurrentMacros.protein) / \(Goals.protein)"
        
        proteinProgressBar.progress = 0.67
        proteinFractionLabel.text = "100 / 150"
        
        caloriesProgressBar.progress = 0.3
        caloriesFractionLabel.text = "600 / 2000"
        
        carbsProgressBar.progress = 0.5
        carbsFractionLabel.text = "40 / 80"
        
        fatsProgressBar.progress = 0.8
        fatsFractionLabel.text = "64 / 80"
        
        
        print(Menu.beastcraft.menu["Harvest Slider"])
        
    }
    
    @IBAction func addMealClicked(_ sender: Any) {
        performSegue(withIdentifier: "HomeToNewMeal", sender: self)
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
    
}

