//
//  ViewController.swift
//  FinalProject
//
//  Created by Tabita Sadiq on 3/15/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var userName: UITextField!
        
    
    @IBAction func saveButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "showWelcome", sender: self)
    }
    
    @IBOutlet weak var googleButton: UIButton!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
    
       //Look of textfield and button
        userName.layer.cornerRadius = 22
    //passwordEntry.layer.cornerRadius = 22
        googleButton.layer.cornerRadius = 22
        
        //when google button is clicked on
        googleButton.addTarget(self, action: #selector(buttonTouchedDown), for: .touchDown)
        
        //touch up event
        googleButton.addTarget(self, action: #selector(buttonReleased), for: [.touchUpInside, .touchUpOutside, .touchCancel])
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        //ACTUAL SEGWAY
        let welcomeVIew = segue.destination as! WelcomeViewController
        
        //preparing to setting the name label
        welcomeVIew.userNameLabel = userName.text ?? "NOT PASSED"

//        let welcomeSegue = welcomeVIew.view
        
        
        
        
//        if segue.identifier == "showWelcome" {
//            print(userName.text)
//
//            
//            
//        
//            if let destinationVC = segue.destination as? WelcomeViewController {
//                destinationVC.userNameLabel = userName.text ?? "NOT PASSED"
//            }
//            
//        }
    }
    
    //Animation for google button
    @objc func buttonTouchedDown(sender: UIButton) {
        UIView.animate(withDuration: 0.2) {
            sender.transform = CGAffineTransform(scaleX: 2.1, y: 2.1)
        }
        
    }
    
    @objc func buttonReleased(sender: UIButton) {
        UIView.animate(withDuration: 0.2) {
            sender.transform = CGAffineTransform.identity // button will go back to the original way it was
        }
    }// end of look code

    
}



