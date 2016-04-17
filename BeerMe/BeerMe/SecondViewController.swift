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

        if  objects.containsObject("Forgotten BoardWalk"){
            var url = NSURL(string: "https://www.forgottenboardwalk.com")
            UIApplication.sharedApplication().openURL(url!)
        }
        else if objects.containsObject("Cape May Brewing Company"){
            var url2 = NSURL(string: "http://capemaybrewery.com")
            UIApplication.sharedApplication().openURL(url2!)
        }
        else if objects.containsObject("Flying Fish Brewery"){
            var url3 = NSURL(string: "https://www.flyingfish.com")
            UIApplication.sharedApplication().openURL(url3!)
        }
       

    }

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    


}

