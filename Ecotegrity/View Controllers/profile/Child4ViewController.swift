//
//  Child4ViewController.swift
//  Ecotegrity
//
//  Created by Tasha Ip Ying Ler on 8/14/20.
//  Copyright © 2020 ecotegrity. All rights reserved.
//

import UIKit
import XLPagerTabStrip




class Child4ViewController: UIViewController, IndicatorInfoProvider {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func secondbackbutton(_ sender: Any) {
    }
    @IBOutlet weak var firstbackbutton: UIBarButtonItem!
    @IBOutlet weak var josephtan: UIButton!
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: "Chat")
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}



