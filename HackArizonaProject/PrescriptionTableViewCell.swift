//
//  PrescriptionTableViewCell.swift
//  HackArizonaProject
//
//  Created by Cody Joseph Walker on 1/14/18.
//  Copyright © 2018 CalebGrantCody. All rights reserved.
//

import UIKit

class PrescriptionTableViewCell: UITableViewCell {
    
    //MARK: Properties
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var WeekdaySelector: WeekdaySelector!
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
