//
//  QuotesViewController.swift
//  Quotes
//
//  Created by Marius Muntean on 12/11/16.
//  Copyright © 2016 Marius Muntean. All rights reserved.
//

import Cocoa

class QuotesViewController: NSViewController {

    @IBOutlet var textLabel : NSTextField!
    let quotes = Quote.all
    
    var currentQuoteIndex : Int = 0{
        didSet{
            updateQuote()
        }
    }
    
    override func viewWillAppear() {
        super.viewWillAppear()
        
        currentQuoteIndex = 0
    }
    
    func updateQuote(){
        textLabel.stringValue = quotes[currentQuoteIndex].description
    }
    
}

extension QuotesViewController{
    @IBAction func goLeft(sender: NSButton){
        currentQuoteIndex = (currentQuoteIndex - 1 + quotes.count) % quotes.count
    }
    
    @IBAction func goRight(sender: NSButton){
        currentQuoteIndex = (currentQuoteIndex + 1) % quotes.count
    }
    
    @IBAction func quit(sender: NSButton){
        NSApplication.shared().terminate(sender)
    }
}


