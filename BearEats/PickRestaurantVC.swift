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

    override func viewDidLoad() {
        super.viewDidLoad()
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
