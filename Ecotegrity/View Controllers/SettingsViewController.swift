//
//  SettingsViewController.swift
//  Ecotegrity
//
//  Created by Jolie Ip Ying See on 24/07/2020.
//  Copyright © 2020 ecotegrity. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var Settingslbl: UILabel!
    
    @IBOutlet weak var playTutorial: UILabel!
    
    @IBOutlet weak var editProfile: UILabel!
    
    @IBOutlet weak var Location: UILabel!
    
    
    
    @IBOutlet weak var notifcations: UIButton!
    
    @IBOutlet weak var termsAndconditions: UILabel!
    
    @IBOutlet weak var logOut: UILabel!
    
    @IBOutlet weak var contactUs: UILabel!
    
    @IBOutlet weak var firsticon: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Settings


        func stylesettingshead(_label:UILabel) {
            
         var view = UILabel()

         view.frame = CGRect(x: 0, y: 0, width: 97, height: 36)

         view.backgroundColor = .white


         view.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)

         view.font = UIFont(name: "Poppins-Regular", size: 24)


         // Line height: 36 pt

         // (identical to box height)


         view.textAlignment = .center

         view.text = "Settings"


         var parent = self.view!

         parent.addSubview(view)

         view.translatesAutoresizingMaskIntoConstraints = false

         view.widthAnchor.constraint(equalToConstant: 97).isActive = true

         view.heightAnchor.constraint(equalToConstant: 36).isActive = true

         view.leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: 159).isActive = true

         view.topAnchor.constraint(equalTo: parent.topAnchor, constant: 60).isActive = true


    }
        
        func stylefirsticon(_label:UILabel) {
            var view = UILabel()

            view.frame = CGRect(x: 0, y: 0, width: 25.03, height: 27.59)

            view.backgroundColor = .white


            view.layer.borderWidth = 2

            view.layer.borderColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.8).cgColor


            var parent = self.view!

            parent.addSubview(view)

            view.translatesAutoresizingMaskIntoConstraints = false

            view.widthAnchor.constraint(equalToConstant: 25.03).isActive = true

            view.heightAnchor.constraint(equalToConstant: 27.59).isActive = true

            view.leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: 35).isActive = true

            view.topAnchor.constraint(equalTo: parent.topAnchor, constant: 202).isActive = true
        }
        
        stylesettingshead(_label: Settingslbl)
        stylesettingsfont(_label: playTutorial)
        stylesettingsfont(_label: editProfile)
        stylesettingsfont(_label: Location)
        stylesettingsfont(_label: soundNotifications)
        stylesettingsfont(_label: termsAndconditions)
        stylesettingsfont(_label: logOut)
        stylesettingsfont(_label: contactUs)
        stylefirsticon(_label: firsticon)

      
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
}
