//
//  NewViewController.swift
//  BeerMe
//
//  Created by Nicholas Dry on 4/15/16.
//  Copyright © 2016 Nicholas Dry. All rights reserved.
//

import UIKit

class NewViewController: UIViewController {
    
    @IBAction func closeAction(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func ibuLink(sender: AnyObject) {
        if let url = NSURL(string: "http://www.thebrewenthusiast.com/ibus/") {
            UIApplication.sharedApplication().openURL(url)
        }
    }
    
    @IBAction func abvLink(sender: AnyObject) {
        if let url = NSURL(string: "https://en.wikipedia.org/wiki/Alcohol_by_volume") {
            UIApplication.sharedApplication().openURL(url)
        }
    }
    
    
}
