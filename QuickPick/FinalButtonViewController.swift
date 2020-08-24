//
//  FinalButtonViewController.swift
//  QuickPick
//
//  Created by Santi Dasari on 8/16/20.
//  Copyright © 2020 Santi Dasari. All rights reserved.
//

import UIKit

class FinalButtonViewController: UIViewController {
    
    @IBOutlet weak var finalButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //purple background
        view.layer.backgroundColor = UIColor(red: 0.835, green: 0.863, blue: 0.976, alpha: 1).cgColor
        
        finalButton.layer.cornerRadius = 160.0
        
    }
    
    
    @IBAction func finalButtonPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "ResultsSegue", sender: self)
    }
    
    
    
}

    
