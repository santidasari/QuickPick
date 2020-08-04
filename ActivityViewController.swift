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
    
    @IBOutlet weak var indoorLabel: UILabel!
    @IBOutlet weak var outdoorLabel: UILabel!
    @IBOutlet weak var anyEnvironLabel: UILabel!
    @IBOutlet var environmentButtons: [UILabel]!
    
    

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
//        indoorLabel.layer.cornerRadius = 10.0
//        outdoorLabel.layer.cornerRadius = 10.0
//        anyEnvironLabel.layer.cornerRadius = 10.0

    }
//    @IBAction func environmentSelected(_ sender: UIButton) {
//        //for loop to let only one of the buttons get highlighted as black, others are gray
//        environmentButtons.forEach({$0.backgroundColor = UIColor.gray})
//        //saving the button selected as the button with black background
//        sender.backgroundColor = UIColor.black
//        let selectedEnviron = getEnviron()
//        //testing
//        print(selectedEnviron)
//    }
    
    //func to use Budget enum and use buttons indexes to save which button was selected
    //!!MUST BE CAREFUL NOT TO CHANGE ENUM AROUND!!
    //can remove method if we can find a way to use sender.tag
//    func getEnviron() -> EnvironmentEnum{
//        for(index, button) in environmentButtons.enumerated(){
//            if button.backgroundColor == UIColor.black{
//                return EnvironmentEnum(rawValue: index) ?? .any
//            }
//        }
//        //default option selected just incase
//        return .any
//    }
//
@IBAction func backButtonPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "ActivityToSecondSegue", sender: self)
    }
    
    @IBAction func distanceSlider(_ sender: UISlider) {
        milesLabel.text = String(Int(sender.value))
    }
  
    
}

