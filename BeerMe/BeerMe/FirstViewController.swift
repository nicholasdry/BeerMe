//
//  FirstViewController.swift
//  BeerMe
//
//  Created by Nicholas Dry on 4/16/16.
//  Copyright © 2016 Nicholas Dry. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    var temp10 = [BeerItem]()
    var temp20 = [BeerItem]()
    var temp30 = [BeerItem]()
    var temp40 = [BeerItem]()
    var temp50 = [BeerItem]()
    var temp60 = [BeerItem]()
    var temp70 = [BeerItem]()
    var temp80 = [BeerItem]()
    var temp90 = [BeerItem]()
    var temp100 = [BeerItem]()
    
    @IBOutlet var switch1: UISwitch!
    @IBOutlet var switch2: UISwitch!
    @IBOutlet var switch3: UISwitch!
    @IBOutlet var switch4: UISwitch!
    @IBOutlet var switch5: UISwitch!
    @IBOutlet var switch6: UISwitch!
    @IBOutlet var switch7: UISwitch!
    @IBOutlet var switch8: UISwitch!
    @IBOutlet var switch9: UISwitch!
    @IBOutlet var switch10: UISwitch!
    
    
    var ibuPreference = 0
    var beerCount = 0
    var abvPreference = 0.0
    
    
    
    /* All placeholder beer labels */
    @IBOutlet var beer1: UILabel!
    @IBOutlet var beer2: UILabel!
    @IBOutlet var beer3: UILabel!
    @IBOutlet var beer4: UILabel!
    @IBOutlet var beer5: UILabel!
    @IBOutlet var beer6: UILabel!
    @IBOutlet var beer7: UILabel!
    @IBOutlet var beer8: UILabel!
    @IBOutlet var beer9: UILabel!
    @IBOutlet var beer10: UILabel!
    
    /* IBU Arrays */
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
    
    
    /* Percentage Arrays */
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
        
        temp10.append(BeerItem(alc: 4.2, ibu: 10, beer: "Coors Light", stat: "North America", brew: "Coors Brewing Company"))
        temp10.append(BeerItem(alc: 4.1, ibu: 10, beer: "Miller Lite", stat: "North America", brew: "Miller Brewing Company"))
        temp10.append(BeerItem(alc: 4.2, ibu: 10, beer: "Michelob ULTRA", stat: "North America", brew: "Anheuser-Busch"))
        temp20.append(BeerItem(alc: 5, ibu: 12, beer: "Budweiser", stat: "North America", brew: "Anheuser-Busch"))
        temp20.append(BeerItem(alc: 4.6, ibu: 19, beer: "Corona Extra", stat: "North America", brew: "Grupo Modelo"))
        temp30.append(BeerItem(alc: 4.2, ibu: 27, beer: "Bud Light", stat: "North America", brew: "Anheuser-Busch"))
        temp40.append(BeerItem(alc: 5.6, ibu: 38, beer: "Sierra Nevada: Pale Ale", stat: "California", brew: "Sierra Nevada Brewing Co."))
        temp50.append(BeerItem(alc: 6.7, ibu: 50, beer: "Victory HopDevil", stat: "Pennsylvania", brew: "Victory Brewing Co."))
        temp60.append(BeerItem(alc: 6.2, ibu: 60, beer: "Hop Hunter IPA", stat: "California", brew: "Sierra Nevada Brewing Co."))
        temp70.append(BeerItem(alc: 7.2, ibu: 65, beer: "Torpedo Extra IPA", stat: "California", brew: "Sierra Nevada Brewing Co."))
        temp80.append(BeerItem(alc: 8.2, ibu: 72, beer: "Lagunitas Maximus", stat: "North America", brew: "Lagunitas Brewing Co."))
        temp90.append(BeerItem(alc: 9.4, ibu: 87, beer: "I’ll Have Whatever She's Having", stat: "Pennsylvania", brew: "Evil Genius "))
        temp100.append(BeerItem(alc: 8, ibu: 100, beer: "Heddy Topper", stat: "Vermont", brew: "The Alchemist"))
        
        
        to30.append(BeerItem(alc: 5.5, ibu: 25, beer: "Funnel Cake NITRO", stat: "NJ", brew: "Forgotten BoardWalk"))
        to30.append(BeerItem(alc: 5.5, ibu: 25, beer: "Funnel Cake", stat: "NJ", brew: "Forgotten BoardWalk"))
        to20.append(BeerItem(alc: 5.0, ibu: 18, beer: "What the Butler Saw", stat: "NJ", brew: "Forgotten BoardWalk"))
        to70.append(BeerItem(alc: 6.9, ibu: 65, beer: "1916 Shore Shiver", stat: "NJ", brew: "Forgotten BoardWalk"))
        to100.append(BeerItem(alc: 8.5, ibu: 100, beer: "Pocket Trick", stat: "NJ", brew: "Forgotten BoardWalk"))
        to20.append(BeerItem(alc: 5.0, ibu: 18, beer: "Lady #6 (Cucumber & Ginger)", stat: "NJ", brew: "Forgotten BoardWalk"))
        to70.append(BeerItem(alc: 6.3, ibu: 63, beer: "Cape May IPA", stat: "NJ", brew: "Cape May Brewing Company"))
        to30.append(BeerItem(alc: 7.3, ibu: 25, beer: "Mop Water", stat: "NJ", brew: "Cape May Brewing Company"))
        to30.append(BeerItem(alc: 8.6, ibu: 25, beer: "Devil's Reach", stat: "NJ", brew: "Cape May Brewing Company"))
        to60.append(BeerItem(alc: 5.5, ibu: 60, beer: "Poverty Beach", stat: "NJ", brew: "Cape May Brewing Company"))
        to10.append(BeerItem(alc: 5.0, ibu: 10, beer: "I Know What You Did Last Shandy", stat: "NJ", brew: "Cape May Brewing Company"))
        to80.append(BeerItem(alc: 9.2, ibu: 80, beer: "Concrete Ship", stat: "NJ", brew: "Cape May Brewing Company"))
        to40.append(BeerItem(alc: 5.4, ibu: 35, beer: "Honey Porter", stat: "NJ", brew: "Cape May Brewing Company"))
        
        var funnelCake = BeerItem(alc: 5.5, ibu: 25, beer: "Funnel Cake", stat: "NJ", brew: "Forgotten Boardwalk")
        var wtb = BeerItem(alc: 5.0, ibu: 18, beer: "What The Butler Saw", stat: "NJ", brew: "Forgotten Boardwalk")
        var shoreShiver = BeerItem(alc: 6.9, ibu: 65, beer: "1916 Shore Shiver", stat: "NJ", brew: "Forgotten Boardwalk")
        var pocketTrick = BeerItem(alc: 8.5, ibu: 100, beer: "Pocket Trick", stat: "NJ", brew: "Forgotten Boardwalk")
        var ladySix = BeerItem(alc: 5.0, ibu: 18, beer: "Funnel Cake NITRO", stat: "NJ", brew: "Forgotten Boardwalk")
        var tourist = BeerItem(alc: 3.4, ibu: 00, beer: " The Tourist (Went to Thailand): Tamarind Berliner Weisse", stat: "NJ", brew: "Forgotten Boardwalk")
        
        per3.append(tourist)
        per5.append(wtb)
        per5.append(ladySix)
        per5.append(funnelCake)
        per6.append(shoreShiver)
        per8.append(pocketTrick)
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func generate(sender: AnyObject) {
        
        
        //Incrementing beerCount
        if switch1.on {
            beerCount += 1
            ibuPreference += 10
        }
        if switch2.on {
            beerCount += 1
            ibuPreference += 20
        }
        if switch3.on {
            beerCount += 1
            ibuPreference += 30
        }
        if switch4.on {
            beerCount += 1
            ibuPreference += 40
        }
        if switch5.on {
            beerCount += 1
            ibuPreference += 50
        }
        if switch6.on {
            beerCount += 1
            ibuPreference += 60
        }
        if switch7.on {
            beerCount += 1
            ibuPreference += 70
        }
        if switch8.on {
            beerCount += 1
            ibuPreference += 80
        }
        if switch9.on {
            beerCount += 1
            ibuPreference += 90
        }
        if switch10.on {
            beerCount += 1
            ibuPreference += 100
        }
        
        print(beerCount)
        ibuPreference/=beerCount
        beerCount = 0
        
        
    }
    
}