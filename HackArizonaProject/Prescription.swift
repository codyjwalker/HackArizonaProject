//
//  Prescription.swift
//  HackArizonaProject
//
//  Created by Cody Joseph Walker on 1/13/18.
//  Copyright © 2018 CalebGrantCody. All rights reserved.
//

import UIKit

class Prescription {
    
    //MARK: Properties
    
    var name: String
    var notes: String
    var pillCount: Int
    var dayArray: [Int]
    var time: String
    
    //MARK: Initialization
    
    init?(name: String, notes: String, pillCount: Int, dayArray: [Int], time: String) {
        
        // The name must not be empty.
        guard !name.isEmpty else {
            return nil
        }
        
        // Initialize stored properties.
        self.name = name
        self.notes = notes
        self.pillCount = pillCount
        self.dayArray = dayArray
        self.time = time
    }
}

