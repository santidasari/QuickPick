//
//  ActivityViewController.swift
//  QuickPick
//
//  Created by Santi Dasari on 7/10/20.
//  Copyright © 2020 Santi Dasari. All rights reserved.
//

import UIKit

class ActivityScreenViewController: UIViewController {


    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //making background green
       view.layer.backgroundColor = UIColor(red: 0.816, green: 0.941, blue: 0.753, alpha: 1).cgColor
    }
    
    
    @IBAction func backButtonPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "ActivityToSecondSegue", sender: self)
    }
    
}

