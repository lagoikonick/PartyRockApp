//
//  ViewController.swift
//  PartyRockApp
//
//  Created by Nick on 29.05.17.
//  Copyright © 2017 LagoikoNick. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var tableView: UITableView!
    
    
    var partyRocks =  [PartyRock]()
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }
 
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
  
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return partyRocks.count
    }
    
    
    
}

