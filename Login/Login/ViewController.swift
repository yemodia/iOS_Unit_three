//
//  ViewController.swift
//  Login
//
//  Created by Yerim on 4/24/19.
//  Copyright © 2019 Yerim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var forgotUserNameButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    @IBOutlet weak var username: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       guard let sender = sender as? UIButton else {return}
        
        if sender == forgotPasswordButton {
            segue.destination.navigationItem.title = "Forgot Password"
        } else if sender == forgotUserNameButton {
            // sets the title of forgot screen pasword to forgot passsword
        segue.destination.navigationItem.title = "Forgot Username"
            //sets the title of the forgot username screen to forgot username
            
        } else {
            segue.destination.navigationItem.title = username.text
            // sets the title fo the log in screen to whatever the user has ebeterd in the username textfield
        }
    }
  
        @IBAction func forgotuserNameButton(_ sender: Any) {
        performSegue(withIdentifier: "Kika", sender: forgotUserNameButton)
        }
    
    
        @IBAction func forgotpassword(_ sender: Any) {
        performSegue(withIdentifier: "Kika", sender: forgotPasswordButton)
    }
}

