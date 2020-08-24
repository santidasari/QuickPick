//
//  FoodTypeViewController.swift
//  QuickPick
//
//  Created by Santi Dasari on 7/19/20.
//  Copyright © 2020 Santi Dasari. All rights reserved.
//

import UIKit

class FoodTypeViewController: UIViewController {
    
    
    @IBOutlet weak var foodTypeLabel: UILabel!
    
    @IBOutlet weak var allSwitch: UISwitch!
    
    @IBOutlet var options: [UISwitch]!
    
    var foodArray = [String]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //pink background for this view as well
        view.layer.backgroundColor = UIColor(red: 1, green: 0.82, blue: 0.863, alpha: 1).cgColor
        foodTypeLabel.layer.masksToBounds = true
        foodTypeLabel.layer.cornerRadius = 25.0
        allSwitch.isOn = true
        for option in options{
            option.isOn = false
        }
    }
    
    //If 'all' switch is turned on, all other switches will be turned off
    @IBAction func allSwitch(_ sender: UISwitch) {
        if(sender.isOn == true){
            for option in options{
                option.isOn = false
            }
        }
    }
    
    
    @IBAction func allPressed(_ sender: UISwitch) {
        if(sender.isOn == true){
            foodArray.append("any")
            foodArray.removeAll { $0 == "Indian"}
            foodArray.removeAll { $0 == "Italian"}
            foodArray.removeAll { $0 == "Asian"}
            foodArray.removeAll { $0 == "Barbeque"}
            foodArray.removeAll { $0 == "Diners"}
            foodArray.removeAll { $0 == "Desserts"}
            foodArray.removeAll { $0 == "Chinese"}
            foodArray.removeAll { $0 == "Korean"}
            foodArray.removeAll { $0 == "Japanese"}
            foodArray.removeAll { $0 == "Hawaiian"}
            foodArray.removeAll { $0 == "Mexican"}
            foodArray.removeAll { $0 == "Sushi"}
            foodArray.removeAll { $0 == "Thai"}
            foodArray.removeAll { $0 == "Vegetarian"}
            foodArray.removeAll { $0 == "Burgers"}
            foodArray.removeAll { $0 == "Pizza"}
        }
        else if(sender.isOn == false){
            foodArray.removeAll { $0 == "any"}
        }
    }
    
    @IBAction func indianSwitchPressed(_ sender: UISwitch) {
        if(sender.isOn == true){
            allSwitch.isOn = false;
            foodArray.removeAll { $0 == "any"}
            foodArray.append("Indian")
        }
        else if(sender.isOn == false){
            foodArray.removeAll { $0 == "Indian"}
        }
    }
    
    
    
    @IBAction func italianPressed(_ sender: UISwitch) {
        if(sender.isOn == true){
            allSwitch.isOn = false;
            foodArray.removeAll { $0 == "any"}
            foodArray.append("Italian")
            
        }
        else if(sender.isOn == false){
            foodArray.removeAll { $0 == "Italian"}
        }
    }
    
    
    
    @IBAction func asianPressed(_ sender: UISwitch) {
        if(sender.isOn == true){
            allSwitch.isOn = false;
            foodArray.removeAll { $0 == "any"}
            foodArray.append("Asian")
            
        }
        else if(sender.isOn == false){
            foodArray.removeAll { $0 == "Asian"}
        }
    }
    
    
    
    
    @IBAction func barbequePressed(_ sender: UISwitch) {
        if(sender.isOn == true){
            allSwitch.isOn = false;
            foodArray.removeAll { $0 == "any"}
            foodArray.append("Barbeque")
        }
        else if(sender.isOn == false){
            foodArray.removeAll { $0 == "Barbeque"}
        }
    }
    
    
    
    @IBAction func burgersPressed(_ sender: UISwitch) {
        if(sender.isOn == true){
            allSwitch.isOn = false;
            foodArray.removeAll { $0 == "any"}
            foodArray.append("Burgers")
            
        }
        else if(sender.isOn == false){
            foodArray.removeAll { $0 == "Burgers"}
        }
    }
    
    
    
    @IBAction func dinersPressed(_ sender: UISwitch) {
        if(sender.isOn == true){
            allSwitch.isOn = false;
            foodArray.removeAll { $0 == "any"}
            foodArray.append("Diners")
            
        }
        else if(sender.isOn == false){
            foodArray.removeAll { $0 == "Diners"}
        }
    }
    
    
    
    @IBAction func dessertPressed(_ sender: UISwitch) {
        if(sender.isOn == true){
            allSwitch.isOn = false;
            foodArray.removeAll { $0 == "any"}
            foodArray.append("Desserts")
            
        }
        else if(sender.isOn == false){
            foodArray.removeAll { $0 == "Desserts"}
        }
    }
    
    
    
    
    @IBAction func chinesePressed(_ sender: UISwitch) {
        if(sender.isOn == true){
            allSwitch.isOn = false;
            foodArray.removeAll { $0 == "any"}
            foodArray.append("Chinese")
            
        }
        else if(sender.isOn == false){
            foodArray.removeAll { $0 == "Chinese"}
        }
    }
    
    
    
    @IBAction func koreanPressed(_ sender: UISwitch) {
        if(sender.isOn == true){
            allSwitch.isOn = false;
            foodArray.removeAll { $0 == "any"}
            foodArray.append("Korean")
            
        }
        else if(sender.isOn == false){
            foodArray.removeAll { $0 == "Korean"}
        }
    }
    
    
    
    
    @IBAction func japanesePressed(_ sender: UISwitch) {
        if(sender.isOn == true){
            allSwitch.isOn = false;
            foodArray.removeAll { $0 == "any"}
            foodArray.append("Japanese")
            
        }
        else if(sender.isOn == false){
            foodArray.removeAll { $0 == "Japanese"}
        }
    }
    
    
    
    @IBAction func hawaiianPressed(_ sender: UISwitch) {
        if(sender.isOn == true){
            allSwitch.isOn = false;
            foodArray.removeAll { $0 == "any"}
            foodArray.append("Hawaiian")
            
        }
        else if(sender.isOn == false){
            foodArray.removeAll { $0 == "Hawaiian"}
        }
    }
    
    
    
    @IBAction func mexicanPressed(_ sender: UISwitch) {
        if(sender.isOn == true){
            allSwitch.isOn = false;
            foodArray.removeAll { $0 == "any"}
            foodArray.append("Mexican")
            
        }
        else if(sender.isOn == false){
            foodArray.removeAll { $0 == "Mexican"}
        }
    }
    
    
    
    @IBAction func pizzaPressed(_ sender: UISwitch) {
        if(sender.isOn == true){
            allSwitch.isOn = false;
            foodArray.removeAll { $0 == "any"}
            foodArray.append("Pizza")
            
        }
        else if(sender.isOn == false){
            foodArray.removeAll { $0 == "Pizza"}
        }
    }
    
    
    
    
    @IBAction func thaiPressed(_ sender: UISwitch) {
        if(sender.isOn == true){
            allSwitch.isOn = false;
            foodArray.removeAll { $0 == "any"}
            foodArray.append("Thai")
            
        }
        else if(sender.isOn == false){
            foodArray.removeAll { $0 == "Thai"}
        }
    }
    
    
    
    @IBAction func sushiPressed(_ sender: UISwitch) {
        if(sender.isOn == true){
            allSwitch.isOn = false;
            foodArray.removeAll { $0 == "any"}
            foodArray.append("Sushi")
            
        }
        else if(sender.isOn == false){
            foodArray.removeAll { $0 == "Sushi"}
        }
    }
    
    
    
    @IBAction func vegPressed(_ sender: UISwitch) {
        if(sender.isOn == true){
            allSwitch.isOn = false;
            foodArray.removeAll { $0 == "any"}
            foodArray.append("Vegetarian")
            
        }
        else if(sender.isOn == false){
            foodArray.removeAll { $0 == "Vegetarian"}
        }
    }
    
    
    
    
    @IBAction func backPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "BackToFoodViewSegue", sender: self)
    }
    
    
    @IBAction func nextPressed(_ sender: Any) {
        print(foodArray)
        self.performSegue(withIdentifier: "FinalButtonSegue", sender: self)
    }
    
    
    
}







