//
//  ClinicalTrialCell.swift
//  ClinTrials
//
//  Created by Richard de Borja on 2019-07-03.
//  Copyright © 2019 Richard de Borja. All rights reserved.
//

import UIKit

class ClinicalTrialCell: UITableViewCell {

    // MARK: Properties
    @IBOutlet weak var clinicalTrialTitle: UILabel!
    @IBOutlet weak var clinicalTrialLocation: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
