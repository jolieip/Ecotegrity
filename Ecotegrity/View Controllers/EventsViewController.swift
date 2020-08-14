//
//  EventsViewController.swift
//  Ecotegrity
//
//  Created by Jolie Ip Ying See on 13/08/2020.
//  Copyright © 2020 ecotegrity. All rights reserved.
//

import UIKit

class EventsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var eventNametextfield: UIView!
    
    @IBOutlet weak var eventDescription: UITextView!
    private let tableView : UITableView = {
        let table = UITableView ()
        table.register(SimpleTableViewCell.self, forCellReuseIdentifier: SimpleTableViewCell.identifier)
        return table
    } ()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
       
        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10;
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: SimpleTableViewCell.identifier , for: indexPath)
        cell.textLabel?.text = "Hello World"
        return cell
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

