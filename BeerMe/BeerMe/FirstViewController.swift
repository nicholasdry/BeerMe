//
//  FirstViewController.swift
//  BeerMe
//
//  Created by Nicholas Dry on 4/16/16.
//  Copyright © 2016 Nicholas Dry. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    var temp10 = []
    var temp20 = []
    var temp30 = []
    var temp40 = []
    var temp50 = []
    var temp60 = []
    var temp70 = []
    var temp80 = []
    var temp90 = []
    var temp100 = []
    
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
        
         var funnelCakeNitro = BeerItem(alc: 5.5, ibu: 25, beer: "Funnel Cake NITRO", stat: "NJ", brew: "Forgotten Boardwalk")
         var funnelCake = BeerItem(alc: 5.5, ibu: 25, beer: "Funnel Cake", stat: "NJ", brew: "Forgotten Boardwalk")
         var wtb = BeerItem(alc: 5.0, ibu: 18, beer: "What The Butler Saw", stat: "NJ", brew: "Forgotten Boardwalk")
         var shoreShiver = BeerItem(alc: 6.9, ibu: 65, beer: "1916 Shore Shiver", stat: "NJ", brew: "Forgotten Boardwalk")
         var pocketTrick = BeerItem(alc: 8.5, ibu: 100, beer: "Pocket Trick", stat: "NJ", brew: "Forgotten Boardwalk")
         var ladySix = BeerItem(alc: 5.0, ibu: 18, beer: "Funnel Cake NITRO", stat: "NJ", brew: "Forgotten Boardwalk")
         var tourist = BeerItem(alc: 3.4, ibu: 00, beer: " The Tourist (Went to Thailand): Tamarind Berliner Weisse", stat: "NJ", brew: "Forgotten Boardwalk")
        
        per3.append(tourist)
        per5.append(wtb)
        per5.append(ladySix)
        per5.append(funnelCakeNitro)
        per5.append(funnelCake)
        per6.append(shoreShiver)
        per8.append(pocketTrick)

        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
}

