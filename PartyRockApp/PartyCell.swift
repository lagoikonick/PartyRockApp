//
//  PartyCell.swift
//  PartyRockApp
//
//  Created by Nick on 29.05.17.
//  Copyright © 2017 LagoikoNick. All rights reserved.
//

import UIKit

class PartyCell: UITableViewCell {

    
    @IBOutlet weak var videoPreviewImage: UIImageView!
    
    @IBOutlet weak var videoTitle: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    
    func updateUI (partyRock: PartyRock) {
        videoTitle.text = partyRock.videoTitle
        //TODO: set image from URL
    }
    
    
}
