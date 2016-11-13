//
//  AppDelegate.swift
//  Quotes
//
//  Created by Marius Muntean on 12/11/16.
//  Copyright © 2016 Marius Muntean. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!

    let statusItem = NSStatusBar.system().statusItem(withLength: NSSquareStatusItemLength)
    let popover = NSPopover()

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        if let button = statusItem.button{
            button.image = NSImage(named: "StatusBarButtonImage")
            button.action = #selector(togglePopover)
        }
        
        popover.contentViewController = QuotesViewController(nibName: "QuotesViewController", bundle: nil)
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
    
    func showPopover(sender: AnyObject?){
        if let button = statusItem.button{
            popover.show(relativeTo: button.bounds, of: button, preferredEdge: NSRectEdge.minY)
        }
    }
    
    func closePopover(sender: AnyObject?){
        popover.performClose(sender)
    }
    
    func togglePopover(sender: AnyObject?){
        if popover.isShown{
            closePopover(sender: sender)
        }
        else{
            showPopover(sender: sender)
        }
    }
    
    func terminate() {
        NSApplication.shared().terminate(self)
    }

}

