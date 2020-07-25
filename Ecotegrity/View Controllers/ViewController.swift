//
//  ViewController.swift
//  Ecotegrity
//
//  Created by Jolie Ip Ying See on 14/07/2020.
//  Copyright © 2020 ecotegrity. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    
    @IBOutlet weak var signUpButton: UIButton!
    
    @IBOutlet weak var loginButton: UIButton!
    
    
    @IBOutlet weak var logo: UIImageView! 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
        setUpElements()
        }
    
    func setUpElements() {
        
        Utilities.styleFilledButton(signUpButton)
        Utilities.styleFilledButton(loginButton)
        
    }
  
   }






