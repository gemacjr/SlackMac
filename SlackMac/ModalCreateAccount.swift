//
//  ModalCreateAccount.swift
//  SlackMac
//
//  Created by Ed McCormic on 8/17/17.
//  Copyright © 2017 Swiftbeard. All rights reserved.
//

import Cocoa

class ModalCreateAccount: NSView {

    // Outlets
    
    @IBOutlet weak var view : NSView!
    @IBOutlet weak var nametxt: NSTextField!
    @IBOutlet weak var emailTxt: NSTextField!
    @IBOutlet weak var passwordTxt: NSSecureTextField!
    @IBOutlet weak var profileImg: NSImageView!
    @IBOutlet weak var createAccountBtn: NSButton!
    @IBOutlet weak var chooseImageBtn: NSButton!
    @IBOutlet weak var progressSpinner: NSProgressIndicator!
    @IBOutlet weak var stackView: NSStackView!
    
    
    override init(frame frameRect: NSRect) {
        super.init(frame: frameRect)
        Bundle.main.loadNibNamed("ModalCreateAccount", owner: self, topLevelObjects: nil)
        
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
        
        profileImg.layer?.cornerRadius = 10
        profileImg.layer?.borderColor = NSColor.gray.cgColor
        profileImg.layer?.borderWidth = 3
        
        createAccountBtn.layer?.backgroundColor = chatGreen.cgColor
        createAccountBtn.layer?.cornerRadius = 7
        chooseImageBtn.layer?.cornerRadius = 7
        chooseImageBtn.layer?.backgroundColor = chatGreen.cgColor
        
        createAccountBtn.styleButtonText(button: createAccountBtn, buttonName: "Create Account", fontColor: .white, alignment: .center, font: AVENIR_REGULAR, size: 13.0)
        
        chooseImageBtn.styleButtonText(button: chooseImageBtn, buttonName: "Choose Image", fontColor: .white, alignment: .center, font: AVENIR_REGULAR, size: 13.0)
        
        nametxt.focusRingType = .none
        emailTxt.focusRingType = .none
        passwordTxt.focusRingType = .none
        
    }
    
    @IBAction func closeModalClicked(_ sender: Any) {
        
        NotificationCenter.default.post(name: NOTIF_CLOSE_MODAL, object: nil)
    }
   
    @IBAction func createAccountBtnClicked(_ sender: Any) {
        
        
    }
    
    @IBAction func chooseImgBtnClicked(_ sender: Any) {
        
        
    }
    
    
    
    
    
    
    
    
}
