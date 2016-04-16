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
    @IBOutlet weak var brewery: UILabel!
    @IBOutlet weak var state: UILabel!
    @IBOutlet weak var alcoholContent: UILabel!
    @IBOutlet weak var ibu: UILabel!
    
    var labelText = String()
     var labelText2 = String()
     var labelText3 = String()
    var labelText4 = Double()
    var labelText5 = Int()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        beerName.text = "Beer Name: \(labelText)"
        brewery.text = labelText2
        state.text = labelText3
        alcoholContent.text = "\(labelText4)"
        ibu.text = "\(labelText5)"

        
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

