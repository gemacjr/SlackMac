//
//  ChannelVC.swift
//  SlackMac
//
//  Created by Ed McCormic on 8/14/17.
//  Copyright © 2017 Swiftbeard. All rights reserved.
//

import Cocoa

class ChannelVC: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.wantsLayer = true
        view.layer?.backgroundColor = chatPurple.cgColor
    }
    
}
