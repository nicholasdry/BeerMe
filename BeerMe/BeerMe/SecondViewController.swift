//
//  SecondViewController.swift
//  BeerMe
//
//  Created by Nicholas Dry on 4/16/16.
//  Copyright © 2016 Nicholas Dry. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var objects: NSMutableArray! = NSMutableArray()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.objects.addObject("Forgotton BoardWalk")
        self.objects.addObject("Cape May Brewing Company")
        self.objects.addObject("Flying Fish Brewery")
        self.objects.addObject("Village Idiot Brewing")
        self.objects.addObject("Dogfish")
        self.objects.addObject("Evil Genius")
        
        
        self.tableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Mark: - Table View
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.objects.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = self.tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! TableViewCell
        
        cell.titleLabel.text = self.objects.objectAtIndex(indexPath.row) as? String
        
        cell.webLink.tag = indexPath.row
        
        cell.webLink.addTarget(self, action: #selector(SecondViewController.logAction), forControlEvents: .TouchUpInside)
        
        
        
        return cell
        
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.performSegueWithIdentifier("showView", sender: self)
    }
    
    @IBAction func logAction(sender: UIButton) {
        
        let btnTag = sender.tag

        if  btnTag == 0{
            let url = NSURL(string: "https://www.forgottenboardwalk.com")
            UIApplication.sharedApplication().openURL(url!)
        }
        else if btnTag == 1{
            let url2 = NSURL(string: "http://capemaybrewery.com")
            UIApplication.sharedApplication().openURL(url2!)
        }
        else if btnTag == 2{
            let url3 = NSURL(string: "https://www.flyingfish.com")
            UIApplication.sharedApplication().openURL(url3!)
        }
        else if btnTag == 3{
            let url4 = NSURL(string: "http://villageidiotbrewing.com")
            UIApplication.sharedApplication().openURL(url4!)
        }
        else if btnTag == 4{
            let url5 = NSURL(string: "http://www.dogfish.com")
            UIApplication.sharedApplication().openURL(url5!)
        }
        else if btnTag == 5{
            let url6 = NSURL(string: "http://www.evilgeniusbeer.com")
            UIApplication.sharedApplication().openURL(url6!)
        }


    }

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    


}

