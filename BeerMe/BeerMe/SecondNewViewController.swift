//
//  SecondViewController.swift
//  BeerMe
//
//  Created by Nicholas Dry on 4/16/16.
//  Copyright © 2016 Nicholas Dry. All rights reserved.
//

import Foundation
import UIKit

class SecondNewViewController: UIViewController {
    
    @IBOutlet var beerName: UILabel!
    
    var labelText = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        beerName.text = labelText
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

