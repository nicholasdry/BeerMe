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
        brewery.text = "Brewery: \(labelText2)"
        state.text = "State: \(labelText3)"
        alcoholContent.text = "ABV: \(labelText4)"
        ibu.text = "IBU: \(labelText5)"

        
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func googleSearch(sender: AnyObject) {
        let query = labelText.stringByReplacingOccurrencesOfString(" ", withString: "+", options: NSStringCompareOptions.LiteralSearch, range: nil)
        let breweryName = labelText2.stringByReplacingOccurrencesOfString(" ", withString: "+", options: NSStringCompareOptions.LiteralSearch, range: nil)
        print(breweryName)
        
        let website = "http://google.com/search?q=where+to+find+" + query + breweryName
        if let url = NSURL(string: website) {
            UIApplication.sharedApplication().openURL(url)
        }
    }

    @IBAction func closeAction(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    func displayAlert(title: String, message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .Alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .Default, handler: nil))
        presentViewController(alertController, animated: true, completion: nil)
        return
    }
    
    func displayShareSheet(shareContent:String) {
        let activityViewController = UIActivityViewController(activityItems: [shareContent as NSString], applicationActivities: nil)
        presentViewController(activityViewController, animated: true, completion: {})
    }

    @IBAction func myShareButton(sender: UIButton) {
        // Check and see if the text field is empty
        if (beerName.text == "") {
            // The text field is empty so display an Alert
            displayAlert("Warning", message: "No beer to share!")
        } else {
            // We have contents so display the share sheet
            displayShareSheet(beerName.text!)
        }
    }
    
}

