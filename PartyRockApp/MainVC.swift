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
        
            let p1 = PartyRock(imageURL: "https://pp.userapi.com/c621829/v621829894/37076/RsNGgEtiC1Y.jpg", videoURL: "<iframe src=\"https://www.youtube-nocookie.com/embed/tWyuglGCKgE?rel=0&amp;showinfo=0?ecver=2\" width=\"640\" height=\"360\" frameborder=\"0\" style=\"position:absolute;width:100%;height:100%;left:0\" allowfullscreen>", videoTitle: "Redfoo - Juicy Wiggle (Official Video)")
            let p2 = PartyRock(imageURL: "https://pp.userapi.com/c626618/v626618894/4e185/3QGyk5jsgSg.jpg", videoURL: "<iframe src=\"https://www.youtube-nocookie.com/embed/tWyuglGCKgE?rel=0&amp;showinfo=0?ecver=2\" width=\"640\" height=\"360\" frameborder=\"0\" style=\"position:absolute;width:100%;height:100%;left:0\" allowfullscreen>", videoTitle: "Redfoo - Juicy Wiggle (Official Video)")
            let p3 = PartyRock(imageURL: "https://pp.userapi.com/c626618/v626618894/4e185/3QGyk5jsgSg.jpg", videoURL: "<iframe src=\"https://www.youtube-nocookie.com/embed/tWyuglGCKgE?rel=0&amp;showinfo=0?ecver=2\" width=\"640\" height=\"360\" frameborder=\"0\" style=\"position:absolute;width:100%;height:100%;left:0\" allowfullscreen>", videoTitle: "Redfoo - Juicy Wiggle (Official Video)")
            let p4 = PartyRock(imageURL: "https://pp.userapi.com/c631420/v631420894/12cd7/KoECW4_PrVQ.jpg", videoURL: "<iframe src=\"https://www.youtube-nocookie.com/embed/tWyuglGCKgE?rel=0&amp;showinfo=0?ecver=2\" width=\"640\" height=\"360\" frameborder=\"0\" style=\"position:absolute;width:100%;height:100%;left:0\" allowfullscreen>", videoTitle: "Redfoo - Juicy Wiggle (Official Video)")
            let p5 = PartyRock(imageURL: "https://pp.userapi.com/c621829/v621829894/37076/RsNGgEtiC1Y.jpg", videoURL: "<iframe src=\"https://www.youtube-nocookie.com/embed/tWyuglGCKgE?rel=0&amp;showinfo=0?ecver=2\" width=\"640\" height=\"360\" frameborder=\"0\" style=\"position:absolute;width:100%;height:100%;left:0\" allowfullscreen>", videoTitle: "Redfoo - Juicy Wiggle (Official Video)")
           
            
            partyRocks.append(p1)
            partyRocks.append(p2)
            partyRocks.append(p3)
            partyRocks.append(p4)
            partyRocks.append(p5)
            
            
             
            
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

