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
        
            let p1 = PartyRock(imageURL: "https://i.iheart.com/v3/url/Ly9tZWRpYS5paGVhcnQuY29tL2NjLWNvbW1vbi9tbGliLzIxMzUvMjAxNi8wMy9kZWZhdWx0L3JlZGZvb18wXzE0NTgyMzIxMDguanBn", videoURL: "<iframe src=\"https://www.youtube-nocookie.com/embed/tWyuglGCKgE?rel=0&amp;showinfo=0?ecver=2\" width=\"640\" height=\"360\" frameborder=\"0\" style=\"position:absolute;width:100%;height:100%;left:0\" allowfullscreen>", videoTitle: "Redfoo - Juicy Wiggle (Official Video)")
            
            partyRocks.append(p1)
            

            
            
            
            
        tableView.delegate = self
        tableView.dataSource = self
        
    }
 
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PartyCell", for: indexPath) as? PartyCell {
            
            let partyRock = partyRocks[indexPath.row]
            
            
            cell.updateUI(partyRock: partyRock)
            return cell
        } else {
            UITableViewCell()
        }
        
        
        return UITableViewCell()
    }
  
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return partyRocks.count
    }
    
    
    
}

