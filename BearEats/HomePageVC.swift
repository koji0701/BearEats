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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //testing the ui
        proteinProgressBar.progress = CGFloat(CurrentMacros.protein) / CGFloat(Goals.protein)
        proteinFractionLabel.text = "\(CurrentMacros.protein) / \(Goals.protein)"
        
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

