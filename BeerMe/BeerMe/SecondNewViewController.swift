//
//  SecondViewController.swift
//  BeerMe
//
//  Created by Nicholas Dry on 4/16/16.
//  Copyright © 2016 Nicholas Dry. All rights reserved.
//

import UIKit

class SecondNewViewController: UIViewController {
    
    var toPass:String!
    
    @IBOutlet weak var labelPassedData: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelPassedData.text = toPass
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

