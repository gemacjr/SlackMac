//
//  MainWindowController.swift
//  SlackMac
//
//  Created by Ed McCormic on 8/14/17.
//  Copyright © 2017 Swiftbeard. All rights reserved.
//

import Cocoa

class MainWindowController: NSWindowController {

    override func windowDidLoad() {
        super.windowDidLoad()
    
        window?.titlebarAppearsTransparent = true
        window?.titleVisibility = .hidden
        
    }

}
