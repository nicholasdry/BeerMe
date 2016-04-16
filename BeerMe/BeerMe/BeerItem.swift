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
    var brewery:String = ""
        
    init(alc: Double, ibu: Int, beer: String, stat: String, brew: String) {
        self.alcoholContent = alc
        self.ibuCount = ibu
        self.name = beer
        self.state = stat
        self.brewery = brew
    }
    
}