//
//  ClickBlockingView.swift
//  SlackMac
//
//  Created by Ed McCormic on 8/15/17.
//  Copyright © 2017 Swiftbeard. All rights reserved.
//

import Cocoa

class ClickBlockingView: NSView {

    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)

    }
    
    override func mouseDown(with event: NSEvent) {}
    override func mouseUp(with event: NSEvent) {}
    override func mouseDragged(with event: NSEvent) {}
    override func mouseMoved(with event: NSEvent) {}
    
}
