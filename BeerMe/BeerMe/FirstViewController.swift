//
//  FirstViewController.swift
//  BeerMe
//
//  Created by Nicholas Dry on 4/16/16.
//  Copyright © 2016 Nicholas Dry. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    var resultBeer:String!
    
    /* These arrays hold the beers in the FirstView */
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
    
    /* These outlets apply to the switches on the screen on our app. */
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
    
    /* These variables hold the user preferences. */
    var ibuPreference = 0
    var beerCount = 0
    var abvPreference = 0.0
    var BeerObj:BeerItem = BeerItem(alc: 0.0, ibu: 0, beer: "", stat: "", brew: "")
    
    /* All placeholder beer labels. */
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
    
    /* IBU Arrays. */
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
    
    
    /* Percentage Arrays. */
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
        
        // 10 TEMP
        temp10.append(BeerItem(alc: 4.2, ibu: 10, beer: "Coors Light", stat: "North America", brew: "Coors Brewing Company"))
        temp10.append(BeerItem(alc: 4.1, ibu: 10, beer: "Miller Lite", stat: "North America", brew: "Miller Brewing Company"))
        temp10.append(BeerItem(alc: 4.2, ibu: 10, beer: "Michelob ULTRA", stat: "North America", brew: "Anheuser-Busch"))
        
        // 20 TEMP
        temp20.append(BeerItem(alc: 5, ibu: 12, beer: "Budweiser", stat: "North America", brew: "Anheuser-Busch"))
        temp20.append(BeerItem(alc: 4.6, ibu: 19, beer: "Corona Extra", stat: "North America", brew: "Grupo Modelo"))
        temp20.append(BeerItem(alc: 4.7, ibu: 12, beer: "Pabst Blue Ribbon", stat: "North America", brew: "Pabst Brewing Co."))
        temp20.append(BeerItem(alc: 4.4, ibu: 12, beer: "Yuengling", stat: "North America", brew: "Yuengling Brewing Co."))
        
        // 30 TEMP
        temp30.append(BeerItem(alc: 4.2, ibu: 27, beer: "Bud Light", stat: "North America", brew: "Anheuser-Busch"))
        temp30.append(BeerItem(alc: 8.5, ibu: 30, beer: "The Files are “IN” the computer?", stat: "NJ", brew: "Evil Genius"))
        temp30.append(BeerItem(alc: 4.8, ibu: 23, beer: "Bridgetown Blonde Ale", stat: "NJ", brew: "Village Idiot Brewing"))
        
        // 40 TEMP
        temp40.append(BeerItem(alc: 5.6, ibu: 38, beer: "Sierra Nevada: Pale Ale", stat: "California", brew: "Sierra Nevada Brewing Co."))
        temp40.append(BeerItem(alc: 6.2, ibu: 35, beer: "Misty Dawn Saison", stat: "NJ", brew: "Cape May Brewing Company"))
        temp40.append(BeerItem(alc: 9.3, ibu: 35, beer: "Tribute Tripel", stat: "PA", brew: "Neshaminey Creek Brewing Co."))
        
        // 50 TEMP
        temp50.append(BeerItem(alc: 6.7, ibu: 50, beer: "Victory HopDevil", stat: "Pennsylvania", brew: "Victory Brewing Co."))
        temp50.append(BeerItem(alc: 6.9, ibu: 47, beer: "Brooklyn East IPA", stat: "NY", brew: "Brooklyn Brewery"))
        temp50.append(BeerItem(alc: 5.2, ibu: 45, beer: "J.A.W.N.", stat: "PA", brew: "Neshaminey Creek Brewing Co."))
        
        
        // 60 TEMP
        temp60.append(BeerItem(alc: 6.0, ibu: 60, beer: "60 Minute IPA", stat: "DE", brew: "Dogfish"))
        temp60.append(BeerItem(alc: 6.2, ibu: 60, beer: "Hop Hunter IPA", stat: "California", brew: "Sierra Nevada Brewing Co."))
        
        // 70 TEMP
        temp70.append(BeerItem(alc: 7.2, ibu: 65, beer: "Torpedo Extra IPA", stat: "California", brew: "Sierra Nevada Brewing Co."))
        temp70.append(BeerItem(alc: 6.8, ibu: 70, beer: "The Hoptimizer", stat: "NJ", brew: "Village Idiot Brewing"))
        
        // 80 TEMP
        temp80.append(BeerItem(alc: 8.2, ibu: 72, beer: "Lagunitas Maximus", stat: "North America", brew: "Lagunitas Brewing Co."))
        temp80.append(BeerItem(alc: 8.2, ibu: 80, beer: "2xIPA", stat: "NY", brew: "Southern Tier Brewing Company"))
        
        // 90 TEMP
        temp90.append(BeerItem(alc: 9.4, ibu: 87, beer: "I’ll Have Whatever She's Having", stat: "Pennsylvania", brew: "Evil Genius "))
        temp90.append(BeerItem(alc: 9.0, ibu: 90, beer: "90 Minute IPA", stat: "DE", brew: "Dogfish"))
        
        // 100 TEMP
        temp100.append(BeerItem(alc: 8, ibu: 100, beer: "Heddy Topper", stat: "Vermont", brew: "The Alchemist"))
        temp100.append(BeerItem(alc: 8.4, ibu: 100, beer: "Teddy 2xIPA", stat: "NJ", brew: "Village Idiot Brewing"))
        
        
        /* The following are added to the IBU sorted arrays. */
        to10.append(BeerItem(alc: 5.0, ibu: 10, beer: "I Know What You Did Last Shandy", stat: "NJ", brew: "Cape May Brewing Company"))
        to10.append(BeerItem(alc: 25.3, ibu: 6, beer: "Hopfish IPA", stat: "NJ", brew: "Flying Fish Brewery"))
        to10.append(BeerItem(alc: 23.8, ibu: 10, beer: "Exit 4 American Trippel", stat: "NJ", brew: "Flying Fish Brewery"))
        to10.append(BeerItem(alc: 7.2, ibu: 9, beer: "Abbey Dubbel", stat: "NJ", brew: "Flying Fish Brewery"))
        
        // 20 IBUS
        to20.append(BeerItem(alc: 5.2, ibu: 11, beer: "Extra Pale Ale", stat: "NJ", brew: "Flying Fish Brewery"))
        to20.append(BeerItem(alc: 5, ibu: 18, beer: "Brooklyn Summer Ale", stat: "NY", brew: "Brooklyn Brewery"))
        to20.append(BeerItem(alc: 4.2, ibu: 20, beer: "Croydon Cream Ale", stat: "PA", brew: "Neshaminey Creek Brewing Co."))
        to20.append(BeerItem(alc: 5.0, ibu: 18, beer: "What the Butler Saw", stat: "NJ", brew: "Forgotten BoardWalk"))
        to20.append(BeerItem(alc: 5.0, ibu: 18, beer: "Lady #6 (Cucumber & Ginger)", stat: "NJ", brew: "Forgotten BoardWalk"))
        to20.append(BeerItem(alc: 5.0, ibu: 15, beer: "Foreshore Cherry Limeaide Shandy", stat: "NJ", brew: "Cape May Brewing Company"))
        to20.append(BeerItem(alc: 5.0, ibu: 15, beer: "Foreshore Cherry Limeaide Shandy", stat: "NJ", brew: "Cape May Brewing Company"))
        to20.append(BeerItem(alc: 4.9, ibu: 20, beer: "Churchville Lager", stat: "PA", brew: "Neshaminey Creek Brewing Co."))
        to20.append(BeerItem(alc: 4.8, ibu: 20, beer: "Namaste", stat: "DE", brew: "Dogfish"))
        to20.append(BeerItem(alc: 9.0, ibu: 12, beer: "Midas Touch", stat: "DE", brew: "Dogfish"))
        
        // 30 IBUS
        to30.append(BeerItem(alc: 8.6, ibu: 30, beer: "Pumking", stat: "NY", brew: "Southern Tier Brewing Company"))
        to30.append(BeerItem(alc: 8.5, ibu: 30, beer: "The Files are “IN” the computer?", stat: "NJ", brew: "Evil Genius"))
        to30.append(BeerItem(alc: 8.5, ibu: 30, beer: "This one time at bandcamp", stat: "NJ", brew: "Evil Genius"))
        to30.append(BeerItem(alc: 8.5, ibu: 30, beer: "I’ll have whatever she's having", stat: "NJ", brew: "Evil Genius"))
        to30.append(BeerItem(alc: 5.5, ibu: 25, beer: "Funnel Cake NITRO", stat: "NJ", brew: "Forgotten BoardWalk"))
        to30.append(BeerItem(alc: 4.8, ibu: 26, beer: "Trauger Pilsner", stat: "PA", brew: "Neshaminey Creek Brewing Co."))
        to30.append(BeerItem(alc: 5.5, ibu: 25, beer: "Funnel Cake", stat: "NJ", brew: "Forgotten BoardWalk"))
        to30.append(BeerItem(alc: 7.3, ibu: 25, beer: "Mop Water", stat: "NJ", brew: "Cape May Brewing Company"))
        to30.append(BeerItem(alc: 8.6, ibu: 25, beer: "Devil's Reach", stat: "NJ", brew: "Cape May Brewing Company"))
        to30.append(BeerItem(alc: 4.8, ibu: 23, beer: "Bridgetown Blonde Ale", stat: "NJ", brew: "Village Idiot Brewing"))
        to30.append(BeerItem(alc: 6.9, ibu: 23, beer: "Bringing Sexy Bock", stat: "NJ", brew: "Cape May Brewing Company"))
        to30.append(BeerItem(alc: 6.9, ibu: 23, beer: "Bringing Sexy Bock", stat: "NJ", brew: "Cape May Brewing Company"))
        
        // 40 IBUS
        to40.append(BeerItem(alc: 5.4, ibu: 35, beer: "Honey Porter", stat: "NJ", brew: "Cape May Brewing Company"))
        to40.append(BeerItem(alc: 9.3, ibu: 35, beer: "Tribute Tripel", stat: "PA", brew: "Neshaminey Creek Brewing Co."))
        to40.append(BeerItem(alc: 5.2, ibu: 33, beer: "Brooklyn Lager", stat: "NY", brew: "Brooklyn Brewery"))
        to40.append(BeerItem(alc: 6.2, ibu: 35, beer: "Misty Dawn Saison", stat: "NJ", brew: "Cape May Brewing Company"))
        to40.append(BeerItem(alc: 5.4, ibu: 35, beer: "Honey Porter", stat: "NJ", brew: "Cape May Brewing Company"))
        
        // 50 IBUS
        to50.append(BeerItem(alc: 5.0, ibu: 45, beer: "Corrosion Sour IPA", stat: "NJ", brew: "Cape May Brewing Company"))
        to50.append(BeerItem(alc: 6.5, ibu: 48, beer: "Cornelius Mey IPA", stat: "NJ", brew: "Cape May Brewing Company"))
        to50.append(BeerItem(alc: 5.0, ibu: 45, beer: "Corrosion Sour IPA", stat: "NJ", brew: "Cape May Brewing Company"))
        to50.append(BeerItem(alc: 5.2, ibu: 45, beer: "J.A.W.N.", stat: "PA", brew: "Neshaminey Creek Brewing Co."))
        to50.append(BeerItem(alc: 6.9, ibu: 47, beer: "Brooklyn East IPA", stat: "NY", brew: "Brooklyn Brewery"))
        to50.append(BeerItem(alc: 6.1, ibu: 42, beer: "Richs Revolutionary Ale", stat: "NJ", brew: "Village Idiot Brewing"))
        to50.append(BeerItem(alc: 7.2, ibu: 50, beer: "Indian Brown Ale", stat: "DE", brew: "Dogfish"))
        
        // 60 IBUS
        to60.append(BeerItem(alc: 8.0, ibu: 60, beer: "Coastal Evacuation", stat: "NJ", brew: "Cape May Brewing Company"))
        to60.append(BeerItem(alc: 6.0, ibu: 60, beer: "60 Minute IPA", stat: "DE", brew: "Dogfish"))
        to60.append(BeerItem(alc: 5.5, ibu: 60, beer: "Poverty Beach", stat: "NJ", brew: "Cape May Brewing Company"))
        to60.append(BeerItem(alc: 8.0, ibu: 60, beer: "Coastal Evacuation", stat: "NJ", brew: "Cape May Brewing Company"))
        
        // 70 IBUS
        to70.append(BeerItem(alc: 6.3, ibu: 63, beer: "Cape May IPA", stat: "NJ", brew: "Cape May Brewing Company"))
        to70.append(BeerItem(alc: 6.9, ibu: 65, beer: "1916 Shore Shiver", stat: "NJ", brew: "Forgotten BoardWalk"))
        to70.append(BeerItem(alc: 7.7, ibu: 70, beer: "White Caps", stat: "NJ", brew: "Cape May Brewing Company"))
        to70.append(BeerItem(alc: 8.2, ibu: 62, beer: "Exit 16 Wild Rice Double IPA", stat: "NJ", brew: "Flying Fish Brewery"))
        to70.append(BeerItem(alc: 6.8, ibu: 70, beer: "The Hoptimizer", stat: "NJ", brew: "Village Idiot Brewing"))
        to70.append(BeerItem(alc: 6.6, ibu: 65, beer: "County Line IPA", stat: "PA", brew: "Neshaminey Creek Brewing Co."))
        to70.append(BeerItem(alc: 7.7, ibu: 70, beer: "White Caps", stat: "NJ", brew: "Cape May Brewing Company"))
        
        // 80 IBUS
        to80.append(BeerItem(alc: 9.2, ibu: 80, beer: "Concrete Ship", stat: "NJ", brew: "Cape May Brewing Company"))
        to80.append(BeerItem(alc: 8.2, ibu: 80, beer: "2xIPA", stat: "NY", brew: "Southern Tier Brewing Company"))
        to80.append(BeerItem(alc: 8.5, ibu: 80, beer: "Coastal Evacuation with Brett", stat: "NJ", brew: "Cape May Brewing Company"))
        to80.append(BeerItem(alc: 8.5, ibu: 80, beer: "Coastal Evacuation with Brett", stat: "NJ", brew: "Cape May Brewing Company"))
        
        // 90 IBUS
        to90.append(BeerItem(alc: 9.0, ibu: 90, beer: "90 Minute IPA", stat: "DE", brew: "Dogfish"))
        
        // 100 IBUS
        to100.append(BeerItem(alc: 9.6, ibu: 100, beer: "Sawyer’s Swap Barleywine Ale", stat: "NJ", brew: "Cape May Brewing Company"))
        to100.append(BeerItem(alc: 8.4, ibu: 100, beer: "Teddy 2xIPA", stat: "NJ", brew: "Village Idiot Brewing"))
        to100.append(BeerItem(alc: 8.4, ibu: 100, beer: "Teddy 2xIPA", stat: "NJ", brew: "Village Idiot Brewing"))
        to100.append(BeerItem(alc: 8.5, ibu: 100, beer: "Pocket Trick", stat: "NJ", brew: "Forgotten BoardWalk"))
        to100.append(BeerItem(alc: 9.6, ibu: 100, beer: "Sawyer’s Swap Barleywine Ale", stat: "NJ", brew: "Cape May Brewing Company"))
        
        /* NOW WE HAVE THE ITEMS BEING ADDED TO THE PERCENTAGE ARRAYS */
        /* The following are added to the IBU sorted arrays. */
        per1.append(BeerItem(alc: 5.0, ibu: 10, beer: "I Know What You Did Last Shandy", stat: "NJ", brew: "Cape May Brewing Company"))
        per1.append(BeerItem(alc: 25.3, ibu: 6, beer: "Hopfish IPA", stat: "NJ", brew: "Flying Fish Brewery"))
        per1.append(BeerItem(alc: 23.8, ibu: 10, beer: "Exit 4 American Trippel", stat: "NJ", brew: "Flying Fish Brewery"))
        per1.append(BeerItem(alc: 7.2, ibu: 9, beer: "Abbey Dubbel", stat: "NJ", brew: "Flying Fish Brewery"))
        
        // 20 IBUS
        per2.append(BeerItem(alc: 5.2, ibu: 11, beer: "Extra Pale Ale", stat: "NJ", brew: "Flying Fish Brewery"))
        per2.append(BeerItem(alc: 5, ibu: 18, beer: "Brooklyn Summer Ale", stat: "NY", brew: "Brooklyn Brewery"))
        per2.append(BeerItem(alc: 4.2, ibu: 20, beer: "Croydon Cream Ale", stat: "PA", brew: "Neshaminey Creek Brewing Co."))
        per2.append(BeerItem(alc: 5.0, ibu: 18, beer: "What the Butler Saw", stat: "NJ", brew: "Forgotten BoardWalk"))
        per2.append(BeerItem(alc: 5.0, ibu: 18, beer: "Lady #6 (Cucumber & Ginger)", stat: "NJ", brew: "Forgotten BoardWalk"))
        per2.append(BeerItem(alc: 5.0, ibu: 15, beer: "Foreshore Cherry Limeaide Shandy", stat: "NJ", brew: "Cape May Brewing Company"))
        per2.append(BeerItem(alc: 5.0, ibu: 15, beer: "Foreshore Cherry Limeaide Shandy", stat: "NJ", brew: "Cape May Brewing Company"))
        per2.append(BeerItem(alc: 4.9, ibu: 20, beer: "Churchville Lager", stat: "PA", brew: "Neshaminey Creek Brewing Co."))
        per2.append(BeerItem(alc: 4.8, ibu: 20, beer: "Namaste", stat: "DE", brew: "Dogfish"))
        per2.append(BeerItem(alc: 9.0, ibu: 12, beer: "Midas Touch", stat: "DE", brew: "Dogfish"))
        
        // 30 IBUS
        per3.append(BeerItem(alc: 8.6, ibu: 30, beer: "Pumking", stat: "NY", brew: "Southern Tier Brewing Company"))
        per3.append(BeerItem(alc: 8.5, ibu: 30, beer: "The Files are “IN” the computer?", stat: "NJ", brew: "Evil Genius"))
        per3.append(BeerItem(alc: 8.5, ibu: 30, beer: "This one time at bandcamp", stat: "NJ", brew: "Evil Genius"))
        per3.append(BeerItem(alc: 8.5, ibu: 30, beer: "I’ll have whatever she's having", stat: "NJ", brew: "Evil Genius"))
        per3.append(BeerItem(alc: 5.5, ibu: 25, beer: "Funnel Cake NITRO", stat: "NJ", brew: "Forgotten BoardWalk"))
        per3.append(BeerItem(alc: 4.8, ibu: 26, beer: "Trauger Pilsner", stat: "PA", brew: "Neshaminey Creek Brewing Co."))
        per3.append(BeerItem(alc: 5.5, ibu: 25, beer: "Funnel Cake", stat: "NJ", brew: "Forgotten BoardWalk"))
        per3.append(BeerItem(alc: 7.3, ibu: 25, beer: "Mop Water", stat: "NJ", brew: "Cape May Brewing Company"))
        per3.append(BeerItem(alc: 8.6, ibu: 25, beer: "Devil's Reach", stat: "NJ", brew: "Cape May Brewing Company"))
        per3.append(BeerItem(alc: 4.8, ibu: 23, beer: "Bridgetown Blonde Ale", stat: "NJ", brew: "Village Idiot Brewing"))
        per3.append(BeerItem(alc: 6.9, ibu: 23, beer: "Bringing Sexy Bock", stat: "NJ", brew: "Cape May Brewing Company"))
        per3.append(BeerItem(alc: 6.9, ibu: 23, beer: "Bringing Sexy Bock", stat: "NJ", brew: "Cape May Brewing Company"))
        
        // 40 IBUS
        per4.append(BeerItem(alc: 5.4, ibu: 35, beer: "Honey Porter", stat: "NJ", brew: "Cape May Brewing Company"))
        per4.append(BeerItem(alc: 9.3, ibu: 35, beer: "Tribute Tripel", stat: "PA", brew: "Neshaminey Creek Brewing Co."))
        per4.append(BeerItem(alc: 5.2, ibu: 33, beer: "Brooklyn Lager", stat: "NY", brew: "Brooklyn Brewery"))
        per4.append(BeerItem(alc: 6.2, ibu: 35, beer: "Misty Dawn Saison", stat: "NJ", brew: "Cape May Brewing Company"))
        per4.append(BeerItem(alc: 5.4, ibu: 35, beer: "Honey Porter", stat: "NJ", brew: "Cape May Brewing Company"))
        
        // 50 IBUS
        per5.append(BeerItem(alc: 5.0, ibu: 45, beer: "Corrosion Sour IPA", stat: "NJ", brew: "Cape May Brewing Company"))
        per5.append(BeerItem(alc: 6.5, ibu: 48, beer: "Cornelius Mey IPA", stat: "NJ", brew: "Cape May Brewing Company"))
        per5.append(BeerItem(alc: 5.0, ibu: 45, beer: "Corrosion Sour IPA", stat: "NJ", brew: "Cape May Brewing Company"))
        per5.append(BeerItem(alc: 5.2, ibu: 45, beer: "J.A.W.N.", stat: "PA", brew: "Neshaminey Creek Brewing Co."))
        per5.append(BeerItem(alc: 6.9, ibu: 47, beer: "Brooklyn East IPA", stat: "NY", brew: "Brooklyn Brewery"))
        per5.append(BeerItem(alc: 6.1, ibu: 42, beer: "Richs Revolutionary Ale", stat: "NJ", brew: "Village Idiot Brewing"))
        per5.append(BeerItem(alc: 7.2, ibu: 50, beer: "Indian Brown Ale", stat: "DE", brew: "Dogfish"))
        
        // 60 IBUS
        per6.append(BeerItem(alc: 8.0, ibu: 60, beer: "Coastal Evacuation", stat: "NJ", brew: "Cape May Brewing Company"))
        per6.append(BeerItem(alc: 6.0, ibu: 60, beer: "60 Minute IPA", stat: "DE", brew: "Dogfish"))
        per6.append(BeerItem(alc: 5.5, ibu: 60, beer: "Poverty Beach", stat: "NJ", brew: "Cape May Brewing Company"))
        per6.append(BeerItem(alc: 8.0, ibu: 60, beer: "Coastal Evacuation", stat: "NJ", brew: "Cape May Brewing Company"))
        
        // 70 IBUS
        per7.append(BeerItem(alc: 6.3, ibu: 63, beer: "Cape May IPA", stat: "NJ", brew: "Cape May Brewing Company"))
        per7.append(BeerItem(alc: 6.9, ibu: 65, beer: "1916 Shore Shiver", stat: "NJ", brew: "Forgotten BoardWalk"))
        per7.append(BeerItem(alc: 7.7, ibu: 70, beer: "White Caps", stat: "NJ", brew: "Cape May Brewing Company"))
        per7.append(BeerItem(alc: 8.2, ibu: 62, beer: "Exit 16 Wild Rice Double IPA", stat: "NJ", brew: "Flying Fish Brewery"))
        per7.append(BeerItem(alc: 6.8, ibu: 70, beer: "The Hoptimizer", stat: "NJ", brew: "Village Idiot Brewing"))
        per7.append(BeerItem(alc: 6.6, ibu: 65, beer: "County Line IPA", stat: "PA", brew: "Neshaminey Creek Brewing Co."))
        per7.append(BeerItem(alc: 7.7, ibu: 70, beer: "White Caps", stat: "NJ", brew: "Cape May Brewing Company"))
        
        // 80 IBUS
        per8.append(BeerItem(alc: 9.2, ibu: 80, beer: "Concrete Ship", stat: "NJ", brew: "Cape May Brewing Company"))
        per8.append(BeerItem(alc: 8.2, ibu: 80, beer: "2xIPA", stat: "NY", brew: "Southern Tier Brewing Company"))
        per8.append(BeerItem(alc: 8.5, ibu: 80, beer: "Coastal Evacuation with Brett", stat: "NJ", brew: "Cape May Brewing Company"))
        per8.append(BeerItem(alc: 8.5, ibu: 80, beer: "Coastal Evacuation with Brett", stat: "NJ", brew: "Cape May Brewing Company"))
        
        // 90 IBUS
        per9.append(BeerItem(alc: 9.0, ibu: 90, beer: "90 Minute IPA", stat: "DE", brew: "Dogfish"))
        
        // 100 IBUS
        per10.append(BeerItem(alc: 9.6, ibu: 100, beer: "Sawyer’s Swap Barleywine Ale", stat: "NJ", brew: "Cape May Brewing Company"))
        per10.append(BeerItem(alc: 8.4, ibu: 100, beer: "Teddy 2xIPA", stat: "NJ", brew: "Village Idiot Brewing"))
        per10.append(BeerItem(alc: 8.4, ibu: 100, beer: "Teddy 2xIPA", stat: "NJ", brew: "Village Idiot Brewing"))
        per10.append(BeerItem(alc: 8.5, ibu: 100, beer: "Pocket Trick", stat: "NJ", brew: "Forgotten BoardWalk"))
        per10.append(BeerItem(alc: 9.6, ibu: 100, beer: "Sawyer’s Swap Barleywine Ale", stat: "NJ", brew: "Cape May Brewing Company"))
       
        /* END */
        
        /* These are added to the percentage arrays. */
        let funnelCakeNitro = BeerItem(alc: 5.5, ibu: 25, beer: "Funnel Cake NITRO", stat: "NJ", brew: "Forgotten Boardwalk")
        let funnelCake = BeerItem(alc: 5.5, ibu: 25, beer: "Funnel Cake", stat: "NJ", brew: "Forgotten Boardwalk")
        let wtb = BeerItem(alc: 5.0, ibu: 18, beer: "What The Butler Saw", stat: "NJ", brew: "Forgotten Boardwalk")
        let shoreShiver = BeerItem(alc: 6.9, ibu: 65, beer: "1916 Shore Shiver", stat: "NJ", brew: "Forgotten Boardwalk")
        let pocketTrick = BeerItem(alc: 8.5, ibu: 100, beer: "Pocket Trick", stat: "NJ", brew: "Forgotten Boardwalk")
        let ladySix = BeerItem(alc: 5.0, ibu: 18, beer: "Funnel Cake NITRO", stat: "NJ", brew: "Forgotten Boardwalk")
        let tourist = BeerItem(alc: 3.4, ibu: 00, beer: " The Tourist (Went to Thailand): Tamarind Berliner Weisse", stat: "NJ", brew: "Forgotten Boardwalk")
        
        per3.append(tourist)
        per5.append(wtb)
        per5.append(ladySix)
        per5.append(funnelCakeNitro)
        per5.append(funnelCake)
        per6.append(shoreShiver)
        per8.append(pocketTrick)
        
        /* These populate the first list of suggested beers. */
        var random = Int(arc4random_uniform(UInt32(temp10.count)))
        beer1.text = temp10[random].name
        random = Int(arc4random_uniform(UInt32(temp20.count)))
        beer2.text = temp20[random].name
        random = Int(arc4random_uniform(UInt32(temp30.count)))
        beer3.text = temp30[random].name
        random = Int(arc4random_uniform(UInt32(temp40.count)))
        beer4.text = temp40[random].name
        random = Int(arc4random_uniform(UInt32(temp50.count)))
        beer5.text = temp50[random].name
        random = Int(arc4random_uniform(UInt32(temp60.count)))
        beer6.text = temp60[random].name
        random = Int(arc4random_uniform(UInt32(temp70.count)))
        beer7.text = temp70[random].name
        random = Int(arc4random_uniform(UInt32(temp80.count)))
        beer8.text = temp80[random].name
        random = Int(arc4random_uniform(UInt32(temp90.count)))
        beer9.text = temp90[random].name
        random = Int(arc4random_uniform(UInt32(temp100.count)))
        beer10.text = temp100[random].name

        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func generate(sender: AnyObject) {
        
        beerCount = 0
        ibuPreference = 0
        
        
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
        
        if beerCount == 0 {
            print("Nothing")
        } else {
            let result = ibuPreference/beerCount
            print(beerCount)
            print(result)
            checkIBU(result)
            print(resultBeer)
            print(BeerObj.alcoholContent)
            print(BeerObj.brewery)
            print(BeerObj.name)
            print(BeerObj.state)
            
            
        }
        
    }
    
  
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if beerCount == 0 {
            print("Nothing")
        } else {
            let destViewController: SecondNewViewController = segue.destinationViewController as! SecondNewViewController
            
            destViewController.labelText = resultBeer!
            destViewController.labelText2 = BeerObj.brewery
            destViewController.labelText3 = BeerObj.state
            destViewController.labelText4 = BeerObj.alcoholContent
            destViewController.labelText5 = BeerObj.ibuCount
        }
        
    }
    
    
    func checkIBU(numb: Int)  {
        
        var resultArray = [BeerItem]()
        var random = 0
        
        if numb <= 10 {
            resultArray = to10
            random = Int(arc4random_uniform(UInt32(resultArray.count)))
            BeerObj = resultArray[random]
            
        }
        else if numb <= 20 && numb > 10 {
            resultArray = to20
            random = Int(arc4random_uniform(UInt32(resultArray.count)))
            BeerObj = resultArray[random]
            
        }
        else if numb <= 30 && numb > 20 {
            resultArray = to30
            random = Int(arc4random_uniform(UInt32(resultArray.count)))
            BeerObj = resultArray[random]

        }
        else if numb <= 40 && numb > 30 {
            resultArray = to40
            random = Int(arc4random_uniform(UInt32(resultArray.count)))
            BeerObj = resultArray[random]

        }
        else if numb <= 50 && numb > 40 {
            resultArray = to50
            random = Int(arc4random_uniform(UInt32(resultArray.count)))
            BeerObj = resultArray[random]

        }
        else if numb <= 60 && numb > 50 {
            resultArray = to60
            random = Int(arc4random_uniform(UInt32(resultArray.count)))
            BeerObj = resultArray[random]

        }
        else if numb <= 70 && numb > 60 {
            resultArray = to70
            random = Int(arc4random_uniform(UInt32(resultArray.count)))
            BeerObj = resultArray[random]

        }
        else if numb <= 80 && numb > 70 {
            resultArray = to80
            random = Int(arc4random_uniform(UInt32(resultArray.count)))
            BeerObj = resultArray[random]

        }
        else if numb <= 90 && numb > 80 {
            resultArray = to90
            random = Int(arc4random_uniform(UInt32(resultArray.count)))
            BeerObj = resultArray[random]

        }
        else if numb <= 100 && numb > 90 {
            resultArray = per9
            random = Int(arc4random_uniform(UInt32(resultArray.count)))
            BeerObj = resultArray[random]

        }
        
        resultBeer = BeerObj.name
    
    }
    
    @IBAction func generateABV(sender: AnyObject) {
        
        beerCount = 0
        ibuPreference = 0
        
        
        //Incrementing beerCount
        if switch1.on {
            beerCount += 1
            abvPreference += 1.0
        }
        if switch2.on {
            beerCount += 1
            abvPreference += 2.0
        }
        if switch3.on {
            beerCount += 1
            abvPreference += 3.0
        }
        if switch4.on {
            beerCount += 1
            abvPreference += 4.0
        }
        if switch5.on {
            beerCount += 1
            abvPreference += 5.0
        }
        if switch6.on {
            beerCount += 1
            abvPreference += 6.0
        }
        if switch7.on {
            beerCount += 1
            abvPreference += 7.0
        }
        if switch8.on {
            beerCount += 1
            abvPreference += 8.0
        }
        if switch9.on {
            beerCount += 1
            abvPreference += 9.0
        }
        if switch10.on {
            beerCount += 1
            abvPreference += 10.0
        }
        
        if beerCount == 0 {
            print("Nothing")
        } else {
            let result = abvPreference/Double(beerCount)
            print(beerCount)
            print(result)
            checkABV(result)
            print(resultBeer)
            print(BeerObj.alcoholContent)
            print(BeerObj.brewery)
            print(BeerObj.name)
            print(BeerObj.state)
            
            
        }
        
    }
    
    func checkABV(numb: Double)  {
        
        var resultArray = [BeerItem]()
        var random = 0
        
        if numb <= 1.0 {
            resultArray = per1
            random = Int(arc4random_uniform(UInt32(resultArray.count)))
            BeerObj = resultArray[random]
            
        }
        else if numb <= 2.0 && numb > 1.0 {
            resultArray = per2
            random = Int(arc4random_uniform(UInt32(resultArray.count)))
            BeerObj = resultArray[random]
            
        }
        else if numb <= 3.0 && numb > 2.0 {
            resultArray = per3
            random = Int(arc4random_uniform(UInt32(resultArray.count)))
            BeerObj = resultArray[random]
            
        }
        else if numb <= 4.0 && numb > 3.0 {
            resultArray = per4
            random = Int(arc4random_uniform(UInt32(resultArray.count)))
            BeerObj = resultArray[random]
            
        }
        else if numb <= 5.0 && numb > 4.0 {
            resultArray = per5
            random = Int(arc4random_uniform(UInt32(resultArray.count)))
            BeerObj = resultArray[random]
            
        }
        else if numb <= 6.0 && numb > 5.0 {
            resultArray = per6
            random = Int(arc4random_uniform(UInt32(resultArray.count)))
            BeerObj = resultArray[random]
            
        }
        else if numb <= 7.0 && numb > 6.0 {
            resultArray = per7
            random = Int(arc4random_uniform(UInt32(resultArray.count)))
            BeerObj = resultArray[random]
            
        }
        else if numb <= 8.0 && numb > 7.0 {
            resultArray = per8
            random = Int(arc4random_uniform(UInt32(resultArray.count)))
            BeerObj = resultArray[random]
            
        }
        else if numb <= 9.0 && numb > 8.0 {
            resultArray = per9
            random = Int(arc4random_uniform(UInt32(resultArray.count)))
            BeerObj = resultArray[random]
            
        }
        else if numb <= 10.0 && numb > 9.0 {
            resultArray = per10
            random = Int(arc4random_uniform(UInt32(resultArray.count)))
            BeerObj = resultArray[random]
            
        }
        
        resultBeer = BeerObj.name
        
    }

    
    @IBAction func randomize(sender: AnyObject) {
        
        switch1.setOn(false, animated: true)
        switch2.setOn(false, animated: true)
        switch3.setOn(false, animated: true)
        switch4.setOn(false, animated: true)
        switch5.setOn(false, animated: true)
        switch6.setOn(false, animated: true)
        switch7.setOn(false, animated: true)
        switch8.setOn(false, animated: true)
        switch9.setOn(false, animated: true)
        switch10.setOn(false, animated: true)
        
        
        var random = Int(arc4random_uniform(UInt32(temp10.count)))
        beer1.text = temp10[random].name
        random = Int(arc4random_uniform(UInt32(temp20.count)))
        beer2.text = temp20[random].name
        random = Int(arc4random_uniform(UInt32(temp30.count)))
        beer3.text = temp30[random].name
        random = Int(arc4random_uniform(UInt32(temp40.count)))
        beer4.text = temp40[random].name
        random = Int(arc4random_uniform(UInt32(temp50.count)))
        beer5.text = temp50[random].name
        random = Int(arc4random_uniform(UInt32(temp60.count)))
        beer6.text = temp60[random].name
        random = Int(arc4random_uniform(UInt32(temp70.count)))
        beer7.text = temp70[random].name
        random = Int(arc4random_uniform(UInt32(temp80.count)))
        beer8.text = temp80[random].name
        random = Int(arc4random_uniform(UInt32(temp90.count)))
        beer9.text = temp90[random].name
        random = Int(arc4random_uniform(UInt32(temp100.count)))
        beer10.text = temp100[random].name
        
    }
    
    @IBAction func showHelpWindow(sender: AnyObject) {
        
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        let vc: NewViewController = storyboard.instantiateViewControllerWithIdentifier("newView") as! NewViewController
        
        self.presentViewController(vc, animated: true, completion: nil)
        
    }


    
}