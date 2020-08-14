//
//  displayeventsViewController.swift
//  Ecotegrity
//
//  Created by Jolie Ip Ying See on 13/08/2020.
//  Copyright © 2020 ecotegrity. All rights reserved.
//

import UIKit
import iOSDropDown

class displayeventsViewController: UIViewController {
    @IBOutlet weak var addEventsclicked: UIButton!
    
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var dateandTime: UITextField!
    
    @IBOutlet weak var backtoEventsclicked: UIBarButtonItem!
    @IBOutlet weak var createEventclicked: UIButton!
    @IBOutlet weak var eventDescription: UITextView!
    @IBOutlet weak var eventName: UITextField!
    
    @IBAction func datePicker(_ sender: Any) {
        let dateFormatter = DateFormatter()

        dateFormatter.dateStyle = DateFormatter.Style.short
        dateFormatter.timeStyle = DateFormatter.Style.short

        let strDate = dateFormatter.string(from: datePicker.date)
        dateLabel.text = strDate
    }
    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBOutlet weak var locationMenu: DropDown!
    override func viewDidLoad() {
        super.viewDidLoad()
        
      
        if locationMenu != nil {
            locationMenu.optionArray = ["Virtual", "In-Person"]
        }
        else {
          
        }
       //Its Id Values and its optional
        if locationMenu != nil {
                  locationMenu.optionIds = [1,2]
               }
        
        if locationMenu != nil {
                         locationMenu.showList()
                      }
        
    }
    
   
    }
    
    
      
      
   
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */






@IBDesignable
class DesignableView: UIView {
}

@IBDesignable
class DesignableButton: UIButton {
}

@IBDesignable
    class DesignableLabel: UILabel {
    }

extension UIView {
    
    @IBInspectable
    var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
        }
    }
    
 @IBInspectable
    var borderWidth: CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
    }
    
    @IBInspectable
    var borderColor: UIColor? {
        get {
            if let color = layer.borderColor {
                return UIColor(cgColor: color)
            }
            return nil
        }
        set {
            if let color = newValue {
                layer.borderColor = color.cgColor
            } else {
                layer.borderColor = nil
            }
        }
    }
    
    @IBInspectable
    var shadowRadius: CGFloat {
        get {
            return layer.shadowRadius
        }
        set {
            layer.shadowRadius = newValue
        }
    }
    
    @IBInspectable
    var shadowOpacity: Float {
        get {
            return layer.shadowOpacity
        }
        set {
            layer.shadowOpacity = newValue
        }
    }
    
    @IBInspectable
    var shadowOffset: CGSize {
        get {
            return layer.shadowOffset
        }
        set {
            layer.shadowOffset = newValue
        }
    }
    
    @IBInspectable
    var shadowColor: UIColor? {
        get {
            if let color = layer.shadowColor {
                return UIColor(cgColor: color)
            }
            return nil
        }
        set {
            if let color = newValue {
                layer.shadowColor = color.cgColor
            } else {
                layer.shadowColor = nil
            }
        }
    }
}


