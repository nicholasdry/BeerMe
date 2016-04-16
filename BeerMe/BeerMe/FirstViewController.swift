//
//  FirstViewController.swift
//  BeerMe
//
//  Created by Nicholas Dry on 4/16/16.
//  Copyright © 2016 Nicholas Dry. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
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
        
        to10.append(BeerItem(alc: 5.5, ibu: 25, beer: "Funnel Cake NITRO", stat: "NJ", brew: "Forgotten BoardWalk"))
        to10.append(BeerItem(alc: 5.5, ibu: 25, beer: "Funnel Cake", stat: "NJ", brew: "Forgotten BoardWalk"))
        to10.append(BeerItem(alc: 6.9, ibu: 65, beer: "1916 Shore Shiver", stat: "NJ", brew: "Forgotten BoardWalk"))
        to10.append(BeerItem(alc: 8.5, ibu: 100, beer: "Pocket Trick", stat: "NJ", brew: "Forgotten BoardWalk"))
        to10.append(BeerItem(alc: 5.0, ibu: 18, beer: "Lady #6 (Cucumber & Ginger)", stat: "NJ", brew: "Cape May Brewing Company"))
        to10.append(BeerItem(alc: 7.3, ibu: 25, beer: "Mop Water", stat: "NJ", brew: "Cape May Brewing Company"))
        to10.append(BeerItem(alc: 8.6, ibu: 25, beer: "Devil's Reach", stat: "NJ", brew: "Cape May Brewing Company"))
        to10.append(BeerItem(alc: 5.5, ibu: 60, beer: "Poverty Beach", stat: "NJ", brew: "Cape May Brewing Company"))
        to10.append(BeerItem(alc: 5.0, ibu: 10, beer: "I Know What You Did Last Shandy", stat: "NJ", brew: "Cape May Brewing Company"))
        to10.append(BeerItem(alc: 9.2, ibu: 80, beer: "Concrete Ship", stat: "NJ", brew: "Cape May Brewing Company"))
        
        to20.append(BeerItem(alc: <#T##Double#>, ibu: <#T##Int#>, beer: <#T##String#>, stat: <#T##String#>, brew: <#T##String#>))
        
        
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
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
}

