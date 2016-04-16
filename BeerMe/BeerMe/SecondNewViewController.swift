//
//  NewViewController.swift
//  BeerMe
//
//  Created by Nicholas Dry on 4/15/16.
//  Copyright © 2016 Nicholas Dry. All rights reserved.
//

import UIKit

class SecondNewViewController: UIViewController {
    
    var dataPassed = String()
    @IBOutlet weak var resultLabel: UILabel!
    
    
    override func viewDidLoad() {
        resultLabel.text = dataPassed
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func closeAction(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
  
    
}
