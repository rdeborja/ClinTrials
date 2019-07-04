//
//  ClinicalTrial.swift
//  ClinTrials
//
//  Created by Richard de Borja on 2019-07-02.
//  Copyright © 2019 Richard de Borja. All rights reserved.
//

import UIKit
import os.log

class ClinicalTrial {
    var city: String
    var institute: String
    var isActive: Bool
    var startDate: Date?
    var endDate: Date?
    
    init?(city: String, institute: String, isActive: Bool, startDate: Date?, endDate: Date?) {
        guard !city.isEmpty else {
            return nil
        }
        guard !institute.isEmpty else {
            return nil
        }
        
        self.city = city
        self.institute = institute
        self.isActive = isActive
        self.startDate = startDate
        self.endDate = endDate
    }
}
