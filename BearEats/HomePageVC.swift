//
//  ViewController.swift
//  BearEats
//
//  Created by Koji Wong on 10/18/24.
//

import UIKit

class HomePageVC: UIViewController {
    

    @IBOutlet weak var proteinProgressBar: GradientHorizontalProgressBar!
    
    @IBOutlet weak var proteinFractionLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //testing the ui
        proteinProgressBar.progress = CGFloat(CurrentMacros.protein) / CGFloat(Goals.protein)
        proteinFractionLabel.text = "\(CurrentMacros.protein) / \(Goals.protein)"
    }
    

}

