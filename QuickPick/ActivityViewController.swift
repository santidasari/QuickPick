//
//  ActivityViewController.swift
//  QuickPick
//
//  Created by Santi Dasari on 7/10/20.
//  Copyright © 2020 Santi Dasari. All rights reserved.
//

import UIKit

class ActivityScreenViewController: UIViewController {
    
    @IBOutlet weak var distanceLabelActivity: UILabel!
    @IBOutlet weak var environLabel: UILabel!
    
    @IBOutlet weak var distanceSlider: UISlider!
    @IBOutlet var milesLabel: UILabel!
    

    @IBOutlet weak var stepper: UIStepper!
    
    @IBOutlet weak var indoorButton: UIButton!
    @IBOutlet weak var outdoorButton: UIButton!
    @IBOutlet weak var anyEnvironButton: UIButton!
   
    
    @IBOutlet var environmentButtons: [UIButton]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //making background green
        view.layer.backgroundColor = UIColor(red: 0.816, green: 0.941, blue: 0.753, alpha: 1).cgColor
        
        // distance label
        distanceLabelActivity.layer.masksToBounds = true
        distanceLabelActivity.layer.cornerRadius = 25.0
        //environment label
        environLabel.layer.masksToBounds = true
        environLabel.layer.cornerRadius = 25.0
        
        // type of environment labels
        indoorButton.layer.cornerRadius = 15.0
        outdoorButton.layer.cornerRadius = 15.0
        anyEnvironButton.layer.cornerRadius = 15.0
        
    }
    @IBAction func environmentSelected(_ sender: UIButton) {
        //for loop to let only one of the buttons get highlighted as black, others are gray
        environmentButtons.forEach({$0.backgroundColor = UIColor.gray})
        //saving the button selected as the button with black background
        sender.backgroundColor = UIColor.black
        let selectedEnviron = getEnviron()
        //testing
        print(selectedEnviron)
    }
    
    //    func to use Budget enum and use buttons indexes to save which button was selected
    //    !!MUST BE CAREFUL NOT TO CHANGE ENUM AROUND!!
    //    can remove method if we can find a way to use sender.tag
    func getEnviron() -> EnvironmentEnum{
        for(index, button) in environmentButtons.enumerated(){
            if button.backgroundColor == UIColor.black{
                return EnvironmentEnum(rawValue: index) ?? .any
            }
        }
        //default option selected just incase
        return .any
    }
    
    @IBAction func backButtonPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "ActivityToSecondSegue", sender: self)
    }
    
    @IBAction func distanceSlider(_ sender: UISlider) {
        stepper.value = Double(Float(sender.value))
        milesLabel.text = String(Int(sender.value))
    }
    
    //stepper that is connected to label and makes it easier for users to enter distance
       //interconnected with slider
       @IBAction func distanceStepper(_ sender: UIStepper) {
           distanceSlider.value = Float(sender.value)
           milesLabel.text = String(Int(sender.value))
       }
       
       //button that takes you to food view page
       @IBAction func nextButtonPressed(_ sender: Any) {
           print(milesLabel.text as Any)
           self.performSegue(withIdentifier: "FinalButtonSegue", sender: self)
           }
       }



