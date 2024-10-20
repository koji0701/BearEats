//
//  PickRestaurantVC.swift
//  BearEats
//
//  Created by Koji Wong on 10/19/24.
//

import Foundation
import UIKit

class PickRestaurantVC: UIViewController {
    
    var menuToSend = [String: Meal]()

    @IBOutlet weak var bdButton: UIButton!
    
    @IBOutlet weak var beastcraftButton: UIButton!
    
    @IBOutlet weak var bestMealLabel: UILabel!
    
    @IBOutlet weak var suggestMealButton: UIButton!
    @IBAction func suggestMealButtonClicked(_ sender: Any) {
        let rec = RecommendationAlgorithm()
        let bestMeal = rec.recMeal()
        bestMealLabel.isHidden = false
        if bestMeal != nil{
            bestMealLabel.text = "\(bestMeal!.mealName) would best fit your remaining macros, with \(bestMeal!.calories) calories, \(bestMeal!.protein) g of protein, \(bestMeal!.carbs) g of carbs, and \(bestMeal!.fats) g of fat."
            
            suggestMealButton.titleLabel?.text = "Suggest another meal!"
        }
        else {
            
            bestMealLabel.text = "No meal suggestion, you've hit today's macro goals!"
        }
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bestMealLabel.isHidden = true
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        /**if let photoSelectorVC = segue.destination as? PhotoSelectorController {
         photoSelectorVC.setMosiacLayout()
         }*/
        
        //make a func in the next view controller with a parameter for which menu to use
        if let addMealVC = segue.destination as? AddMealVC {
            
            addMealVC.prepareMealsList(incMealsList: menuToSend)
        }
    }
    
    @IBAction func bdClicked(_ sender: Any) {
        menuToSend = Menu.BD.menu

        performSegue(withIdentifier: "pickRestaurantToAddMeal", sender: self)
    }
    
    @IBAction func ducClicked(_ sender: Any) {
        menuToSend = Menu.DUC.menu

        performSegue(withIdentifier: "pickRestaurantToAddMeal", sender: self)
        
    }
    @IBAction func bergsonClicked(_ sender: Any) {
        menuToSend = Menu.Bergson.menu

        performSegue(withIdentifier: "pickRestaurantToAddMeal", sender: self)
        
    }
    
    
    @IBAction func subwayClicked(_ sender: Any) {
        menuToSend = Menu.Subway.menu

        performSegue(withIdentifier: "pickRestaurantToAddMeal", sender: self)
        
    }
    @IBAction func beastcraftClicked(_ sender: Any) {
        menuToSend = Menu.beastcraft.menu

        performSegue(withIdentifier: "pickRestaurantToAddMeal", sender: self)
        
    }
    
    @IBAction func beveragesClicked(_ sender: Any) {
        menuToSend = Menu.Beverages.menu

        performSegue(withIdentifier: "pickRestaurantToAddMeal", sender: self)
        
    }
    
}
