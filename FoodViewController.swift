//
//  FoodViewController.swift
//  QuickPick
//
//  Created by Santi Dasari on 7/10/20.
//  Copyright © 2020 Santi Dasari. All rights reserved.
//

import UIKit

class FoodScreenViewController: UIViewController {
    

    //array off all the budget button options
    @IBOutlet var budgetButtons: [UIButton]!

    @IBOutlet weak var budgetLabel: UILabel!
    @IBOutlet weak var cheapButton: UIButton!
    @IBOutlet weak var mediumButton: UIButton!
    @IBOutlet weak var expensiveButton: UIButton!
    @IBOutlet weak var anyButton: UIButton!
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var milesLabel: UILabel!
    
    @IBOutlet weak var foodTypeLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //making background pink
        view.layer.backgroundColor = UIColor(red: 1, green: 0.82, blue: 0.863, alpha: 1).cgColor
        
       //making everything have rounded corners
        budgetLabel.layer.masksToBounds = true
        budgetLabel.layer.cornerRadius = 25.0
        //smaller buttons so less rounding needed
        cheapButton.layer.cornerRadius = 10.0
        mediumButton.layer.cornerRadius = 10.0
        expensiveButton.layer.cornerRadius = 10.0
        anyButton.layer.cornerRadius = 10.0
        distanceLabel.layer.masksToBounds = true
        distanceLabel.layer.cornerRadius = 25.0
        foodTypeLabel.layer.masksToBounds = true
        foodTypeLabel.layer.cornerRadius = 25.0

    }
    
    
    @IBAction func backButtonPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "FoodToSecondSegue", sender: self)
    }
    
    
    //saves which budget is selected by user
    //'any' button selected as current default
    @IBAction func budgetSelected(_ sender: UIButton) {
        //for loop to let only one of the buttons get highlighted as black, others are gray
        budgetButtons.forEach({$0.backgroundColor = UIColor.gray})
        //saving the button selected as the button with black background
        sender.backgroundColor = UIColor.black
        let selectedBudget = getBudget()
        //testing
        print(selectedBudget)
    }
    
    //func to use Budget enum and use buttons indexes to save which button was selected
    //!!MUST BE CAREFUL NOT TO CHANGE ENUM AROUND!!
    //can remove method if we can find a way to use sender.tag
    func getBudget() -> Budget{
        for(index, button) in budgetButtons.enumerated(){
            if button.backgroundColor == UIColor.black{
                return Budget(rawValue: index) ?? .any
            }
        }
        //default option selected just incase
        return .any
    }
    
    
    @IBAction func distanceSlider(_ sender: UISlider) {
        milesLabel.text = String(Int(sender.value))
    }
    
    
    @IBAction func `switch`(_ sender: UISwitch) {
       
        }
        
    }


