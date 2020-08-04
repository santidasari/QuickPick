//
//  LocationViewController.swift
//  QuickPick
//
//  Created by Santi Dasari on 7/12/20.
//  Copyright © 2020 Santi Dasari. All rights reserved.
//

import UIKit
import CoreLocation

class LocationViewController: UIViewController, CLLocationManagerDelegate {

    @IBOutlet weak var label: UILabel!
    var usrTextField: UITextField?
    @IBOutlet weak var currentLocationButton: UIButton!
    let locationManager = CLLocationManager()
    @IBOutlet weak var zipCodeButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //purple background
        view.layer.backgroundColor = UIColor(red: 0.835, green: 0.863, blue: 0.976, alpha: 1).cgColor
        //making buttons and label to be rounded
        label.layer.masksToBounds = true
        label.layer.cornerRadius = 25.0
        currentLocationButton.layer.cornerRadius = 25.0
        zipCodeButton.layer.cornerRadius = 25.0
    }
    
    
    //button goes to food/activity page
    @IBAction func currentLocationButtonPressed(_ sender: Any) {
        //asking for users current location
        locationManager.requestWhenInUseAuthorization()
               if CLLocationManager.locationServicesEnabled(){
                   locationManager.delegate = self
                   locationManager.desiredAccuracy = kCLLocationAccuracyBest
                   locationManager.startUpdatingLocation()
               }
    }
    
    
    //deciding if we need to send user to settings to give us access to location or send them to next view
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        var currentLocation:CLLocation!
        if(status == CLAuthorizationStatus.denied){
            showLocationDisabledPopUp()
        }
       if((status == CLAuthorizationStatus.authorizedWhenInUse) || (status == CLAuthorizationStatus.authorizedAlways)){
        currentLocation = locationManager.location
        print(currentLocation.coordinate)
        self.performSegue(withIdentifier: "SecondViewSegue", sender: self)
        }
    }
    
    //function to help get users location and prints out in debugger
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
           if let location = locations.first{
               print(location.coordinate)
              self.performSegue(withIdentifier: "SecondViewSegue", sender: self)
           }
       }
    
    //does the work for if location is diabled and alert pops up to tell users to go to settings and gives access
    func showLocationDisabledPopUp(){
        let alertController = UIAlertController(title:"Location Access Disabled", message: "choose another method for location or give acess", preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        let openAction = UIAlertAction(title: "Open Settings", style: .default) { (action) in if let url = URL(string: UIApplication.openSettingsURLString){
             UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
        alertController.addAction(openAction)
        alertController.addAction(cancelAction)
        self.present(alertController, animated:true, completion:nil)
    }
    
    
    //alert pops up for user to enter their zipcode if thos option is selected
    @IBAction func zipcodeButtonPressed(_ sender: Any) {
        let zipcodeAlert = UIAlertController(title:"Type in zipcode", message: nil, preferredStyle: .alert)
        zipcodeAlert.addTextField(configurationHandler: usrTextField)
        
        let okAction = UIAlertAction(title: "OK", style: .default, handler: self.okHandler)
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        zipcodeAlert.addAction(okAction)
        zipcodeAlert.addAction(cancelAction)
        self.present(zipcodeAlert, animated: true)
    }
    
    //used for the alert pop up
    func usrTextField(textField: UITextField!){
        usrTextField = textField
        usrTextField?.placeholder = "Zipcode"
        usrTextField?.keyboardType = .asciiCapableNumberPad
    }
    
    //if user enters zipcode and presses ok they are taken to next page
    //prints out the zipcode entered by user
    func okHandler(alert: UIAlertAction){
        print(usrTextField?.text as Any)
        self.performSegue(withIdentifier: "SecondViewSegue", sender: self)
    }
    
}
