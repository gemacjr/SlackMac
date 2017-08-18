//
//  ModalLogin.swift
//  SlackMac
//
//  Created by Ed McCormic on 8/17/17.
//  Copyright © 2017 Swiftbeard. All rights reserved.
//

import Cocoa

class ModalLogin: NSView {
    
    // Outlets
    
    @IBOutlet weak var view : NSView!
    @IBOutlet weak var userNameTxt: NSTextField!
    @IBOutlet weak var passwordTxt: NSSecureTextField!
    @IBOutlet weak var emailLoginBtn: NSButton!
    @IBOutlet weak var createAccountBtn: NSButton!
    @IBOutlet weak var stackView: NSStackView!
    
    
    
    override init(frame frameRect: NSRect) {
        super.init(frame: frameRect)
        Bundle.main.loadNibNamed("ModalLogin", owner: self, topLevelObjects: nil)
        
        self.addSubview(self.view)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)
        setUpview()
        
    }
    
    func setUpview() {
        self.view.frame = NSRect(x: 0, y: 0, width: 475, height: 300)
        view.layer?.backgroundColor = CGColor.white
        view.layer?.cornerRadius = 7
        
        emailLoginBtn.layer?.backgroundColor = chatGreen.cgColor
        emailLoginBtn.layer?.cornerRadius = 7
        emailLoginBtn.styleButtonText(button: emailLoginBtn, buttonName: "Login", fontColor: .white, alignment: .center, font: AVENIR_REGULAR, size: 14.0)
        
        createAccountBtn.styleButtonText(button: createAccountBtn, buttonName: "Create Account", fontColor: chatGreen, alignment: .center, font: AVENIR_REGULAR, size: 12.0)
        
        
    }
    
    @IBAction func closeModalClicked(_ sender: Any) {
        NotificationCenter.default.post(name: NOTIF_CLOSE_MODAL, object: nil)
        
    }
    
    @IBAction func emailLoginClicked(_ sender: Any) {
    }
    
    @IBAction func createAccountClicked(_ sender: Any) {
        
        let closeImmediatelyDict:[String: Bool] = [USER_INFO_REMOVE_IMMEDIATELY: true]
        
        NotificationCenter.default.post(name: NOTIF_CLOSE_MODAL, object: nil, userInfo: closeImmediatelyDict)
        
        let createAccountDict:[String: ModalType] = [USER_INFO_MODAL: ModalType.createAccount]
        
        NotificationCenter.default.post(name: NOTIF_PRESENT_MODAL, object: nil, userInfo: createAccountDict)
        
    }
    
    
    
}
