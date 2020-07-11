//
//  FoodViewController.swift
//  QuickPick
//
//  Created by Santi Dasari on 7/10/20.
//  Copyright © 2020 Santi Dasari. All rights reserved.
//

import UIKit

class FoodScreenViewController: UIViewController {


    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //making background pink
        view.layer.backgroundColor = UIColor(red: 1, green: 0.82, blue: 0.863, alpha: 1).cgColor
    }
    
    
    @IBAction func backButtonPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "FoodToSecondSegue", sender: self)
    }
    
}
