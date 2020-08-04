//
//  ViewController.swift
//  QuickPick
//
//  Created by Santi Dasari on 7/10/20.
//  Copyright © 2020 Santi Dasari. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    

    @IBOutlet weak var startButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
         
      //setting some characteristics for the start button like rounded edges
        startButton.layer.cornerRadius = 25.0
        
        
    }
    
   
    @IBAction func startButtonPressed(_ sender: Any) {
        //func that lets us go from home screen to second view
        self.performSegue(withIdentifier: "SecondViewSegue", sender: self)
        
    }
    
    

   
    
}

