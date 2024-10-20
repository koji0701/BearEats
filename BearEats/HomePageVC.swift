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
    let defaults = UserDefaults.standard
    var shouldUpdateProgress = false
    
    var meals = [MealData]()
    //var meals = [Meal]()
    /*var meals = [
        Menu.beastcraft.menu["Harvest Slider"],
        Menu.Bergson.menu["Acai Energy"],
        Menu.Subway.menu["6\" BLT"],
        Menu.beastcraft.menu["Harvest Slider"],
        Menu.Bergson.menu["Acai Energy"],
        Menu.Subway.menu["6\" BLT"],
        Menu.beastcraft.menu["Harvest Slider"],
        Menu.Bergson.menu["Acai Energy"],
        Menu.Subway.menu["6\" BLT"]
    ]*/
    
    @IBOutlet weak var greetingLabel: UILabel!
    
    
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
        fetchMealData()
        refreshProgressBars()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .singleLine
        
        tableView.reloadData()
        print("controllers")
        print(tabBarController?.viewControllers)
        print(tabBarController?.viewControllers![0] as? HomePageVC)
        
        setGreetingLabel()
        proteinProgressBar.color = .systemBlue
        caloriesProgressBar.color = .systemGreen
        fatsProgressBar.color = .systemOrange
        
        
    }
    
    private func setGreetingLabel() {
        let greetingMessages = ["Good Morning", "Good Afternoon", "Good Evening"]
        let emojis = ["🤙", "👻", "👽", "🐥"]
        let randomNum = Int.random(in: 0..<emojis.count) // Use Int.random(in:) for random number generation

        let hour = Calendar.current.component(.hour, from: Date())

        if hour < 12 {
            // Morning
            greetingLabel.text = greetingMessages[0] + " " + emojis[randomNum]
        } else if hour < 18 {
            // Afternoon
            greetingLabel.text = greetingMessages[1] + " " + emojis[randomNum]
        } else {
            // Evening
            greetingLabel.text = greetingMessages[2] + " " + emojis[randomNum]
        }
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
    
    func fetchMealData() {
        print("Context: \(context)") // This should not be nil
        let fetchRequest: NSFetchRequest<MealData> = MealData.fetchRequest()
        // Get the start of the current day
        let startOfToday = Calendar.current.startOfDay(for: Date())
        
        // Set a predicate to filter meals from today onwards
        fetchRequest.predicate = NSPredicate(format: "date >= %@", startOfToday as NSDate)

        // Sort in descending order by date (most recent meals at the top)
        let sortDescriptor = NSSortDescriptor(key: "date", ascending: true)
        fetchRequest.sortDescriptors = [sortDescriptor]

        do {
            meals = try context.fetch(fetchRequest)
            tableView.reloadData()
        } catch {
            print("Failed to fetch meals: \(error)")
        }
    }


    func refreshProgressBars() {
        proteinProgressBar.progress = CGFloat(CurrentMacros.protein) / CGFloat(Goals.protein)
        proteinFractionLabel.text = "\(Int(CurrentMacros.protein+0.5)) / \(Int(Goals.protein+0.5))g"
        
        carbsProgressBar.progress = CGFloat(CurrentMacros.carbs) / CGFloat(Goals.carbs)
        carbsFractionLabel.text = "\(Int(CurrentMacros.carbs+0.5)) / \(Int(Goals.carbs+0.5))g"
        
        caloriesProgressBar.progress = CGFloat(CurrentMacros.calories) / CGFloat(Goals.calories)
        caloriesFractionLabel.text = "\(Int(CurrentMacros.calories+0.5)) / \(Int(Goals.calories+0.5))kcal"
        
        fatsProgressBar.progress = CGFloat(CurrentMacros.fats) / CGFloat(Goals.fats)
        fatsFractionLabel.text = "\(Int(CurrentMacros.fats+0.5)) / \(Int(Goals.fats+0.5))g"
    }
    
    func addMeal(addedMeal: Meal) {
        CurrentMacros.calories += addedMeal.calories
        CurrentMacros.protein += addedMeal.protein
        CurrentMacros.fats += addedMeal.fats
        CurrentMacros.carbs += addedMeal.carbs
        
        defaults.set(CurrentMacros.calories, forKey: "currentMacrosCalories")
        defaults.set(CurrentMacros.protein, forKey: "currentMacrosProtein")
        defaults.set(CurrentMacros.fats, forKey: "currentMacrosFats")
        defaults.set(CurrentMacros.carbs, forKey: "currentMacrosCarbs")

        let newMeal = MealData(context: self.context)
        newMeal.calories = addedMeal.calories
        newMeal.fats = addedMeal.fats
        newMeal.protein = addedMeal.protein
        newMeal.date = addedMeal.date
        newMeal.mealName = addedMeal.mealName
        newMeal.carbs = addedMeal.carbs
        newMeal.time = addedMeal.time
        
        meals.append(newMeal)
        
        saveContext()
        
        //MARK: add meal to context
        
        tableView.reloadData()
        refreshProgressBars()
        
    }
}


extension HomePageVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MealCell", for: indexPath)
                
        cell.textLabel?.text = meals[indexPath.row].mealName
        cell.detailTextLabel?.text = meals[indexPath.row].time
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return meals.count }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if meals.count == 0 {
            return "No meals yet today :("
        }
        return "Today's Meals"
    }
    func numberOfSections(in tableView: UITableView) -> Int { return 1 }
    
}
