//
//  SecondScreenViewController.swift
//  QuickPick
//
//  Created by Santi Dasari on 7/10/20.
//  Copyright © 2020 Santi Dasari. All rights reserved.
//

import UIKit

class SecondScreenViewController: UIViewController {


    @IBOutlet weak var selectLabel: UILabel!
    
    @IBOutlet weak var foodButton: UIButton!
    
    
    @IBOutlet weak var activityButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //sets up the pastel blue color background - from Figma
         view.layer.backgroundColor = UIColor(red: 0.627, green: 0.867, blue: 0.902, alpha: 1).cgColor
        
        //rounding off the corners for the label
        selectLabel.layer.masksToBounds = true
        selectLabel.layer.cornerRadius = 25.0
        //rounding off the corners for the buttons
        foodButton.layer.cornerRadius = 25.0
        activityButton.layer.cornerRadius = 25.0
    }
    
    
    
    @IBAction func foodButtonPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "FoodSegue", sender: self)
        
    }
    
    
    
    
    @IBAction func activityButtonPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "ActivitySegue", sender: self)
        
        
    }
    
}

