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
    
    var shouldUpdateProgress = false
    
    //let meals = [Meal]()
    var meals = [
        Menu.beastcraft.menu["Harvest Slider"],
        Menu.Bergson.menu["Acai Energy"],
        Menu.Subway.menu["6\" BLT"],
        Menu.beastcraft.menu["Harvest Slider"],
        Menu.Bergson.menu["Acai Energy"],
        Menu.Subway.menu["6\" BLT"],
        Menu.beastcraft.menu["Harvest Slider"],
        Menu.Bergson.menu["Acai Energy"],
        Menu.Subway.menu["6\" BLT"]
    ]
    
    
    
    @IBOutlet weak var proteinProgressBar: GradientHorizontalProgressBar!
    
    @IBOutlet weak var proteinFractionLabel: UILabel!
    
    @IBOutlet weak var caloriesFractionLabel: UILabel!
    
    @IBOutlet weak var caloriesProgressBar: GradientHorizontalProgressBar!
    
    @IBOutlet weak var carbsFractionLabel: UILabel!
    
    @IBOutlet weak var carbsProgressBar: GradientHorizontalProgressBar!
    
    @IBOutlet weak var fatsFractionLabel: UILabel!
    
    @IBOutlet weak var fatsProgressBar: GradientHorizontalProgressBar!
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        refreshProgressBars()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .singleLine
        tableView.insertRows(at: [IndexPath(row: 0, section: 0)], with: .fade)
        
        tableView.reloadData()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if shouldUpdateProgress {
            refreshProgressBars()
            shouldUpdateProgress = false
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        shouldUpdateProgress = true
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
    
    func fetchContext() {
        
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


extension HomePageVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MealCell", for: indexPath)
                
        cell.textLabel?.text = meals[indexPath.row]?.mealName
        cell.detailTextLabel?.text = meals[indexPath.row]?.time
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { return meals.count }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? { return "Today's Meals" }
    func numberOfSections(in tableView: UITableView) -> Int { return 1 }

    
    
}
