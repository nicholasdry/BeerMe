//
//  BeerItem.swift
//  BeerMe
//
//  Created by Nicholas Dry on 4/16/16.
//  Copyright © 2016 Nicholas Dry. All rights reserved.
//

import UIKit

class BeerItem {
    
    var alcoholContent:Double = 0.0
    var ibuCount:Int = 0
    var name:String = ""
    var state:String = ""
        
    func create(alc: Double, ibu: Int, beer: String, stat: String) {
        alcoholContent = alc
        ibuCount = ibu
        name = beer
        state = stat
    }
    
}