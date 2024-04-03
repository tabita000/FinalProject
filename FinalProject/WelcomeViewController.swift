//
//  WelcomeViewController.swift
//  FinalProject
//
//  Created by Tabita Sadiq on 3/18/24.
//

import UIKit

class WelcomeViewController : UIViewController {
    
    //    @IBOutlet weak var welcomeTextField: UITextField!
    
    var userNameLabel: String = ""
    
    @IBOutlet weak var nameLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(nameLabel.text!)
        nameLabel.text = "Welcome \(String(userNameLabel)) 😃"
        
        
        
    }
    
    
    
    
    
    @IBAction func wheelSpinButton(_ sender: RotatingButton) {
        let fullRotation = CGFloat.pi * 2 // full rotation 360 degrees
        let duration = 2.0 // spin in seconds
        let rotations = 3
        
        UIView.animate(withDuration: duration, animations: {
            sender.transform = CGAffineTransform(rotationAngle: fullRotation * CGFloat(rotations))
        }, completion: { finished in
            // Here i need to code what other actions the button will execute
            if finished {
                // reset button to original position
                sender.transform = CGAffineTransform.identity
            }
        })
        
    }
    
    
}
