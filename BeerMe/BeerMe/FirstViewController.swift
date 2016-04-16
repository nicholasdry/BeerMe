//
//  FirstViewController.swift
//  BeerMe
//
//  Created by Nicholas Dry on 4/16/16.
//  Copyright © 2016 Nicholas Dry. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    
    struct BeerItem {
        var alcoholContent:Double
        var ibuCount:Int
        var name:String
        var state:String
    }
    
    
    /** IBU Arrays **/
    var to10 = [BeerItem]()
    var to20 = [BeerItem]()
    var to30 = [BeerItem]()
    var to40 = [BeerItem]()
    var to50 = [BeerItem]()
    var to60 = [BeerItem]()
    var to70 = [BeerItem]()
    var to80 = [BeerItem]()
    var to90 = [BeerItem]()
    var to100 = [BeerItem]()
    
    
    /** ABV Arrays **/
    var per1 = [BeerItem]()
    var per2 = [BeerItem]()
    var per3 = [BeerItem]()
    var per4 = [BeerItem]()
    var per5 = [BeerItem]()
    var per6 = [BeerItem]()
    var per7 = [BeerItem]()
    var per8 = [BeerItem]()
    var per9 = [BeerItem]()
    var per10 = [BeerItem]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

