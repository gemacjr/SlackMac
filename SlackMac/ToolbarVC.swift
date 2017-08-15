//
//  ToolbarVC.swift
//  SlackMac
//
//  Created by Ed McCormic on 8/14/17.
//  Copyright © 2017 Swiftbeard. All rights reserved.
//

import Cocoa

enum ModalType {
    case login
}

class ToolbarVC: NSViewController {
    
    
    // Outlets
    @IBOutlet weak var loginImg: NSImageView!
    @IBOutlet weak var loginLbl: NSTextField!
    @IBOutlet weak var loginStack: NSStackView!
    
    var modalBGView : ClickBlockingView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func viewWillAppear() {
        
        setUpView()
    }
    
    
    func setUpView() {
        
        NotificationCenter.default.addObserver(self, selector: #selector(ToolbarVC.presentModal(_:)), name: NOTIF_PRESENT_MODAL, object: nil)
        view.wantsLayer = true
        view.layer?.backgroundColor = chatGreen.cgColor
        
        loginStack.gestureRecognizers.removeAll()
        let profilePage = NSClickGestureRecognizer(target: self, action: #selector(ToolbarVC.openProfilePage(_:)))
        loginStack.addGestureRecognizer(profilePage)
    }
    
    func openProfilePage(_ recognizer: NSClickGestureRecognizer){
        let loginDict: [String: ModalType] = [USER_INFO_MODAL: ModalType.login]
        NotificationCenter.default.post(name: NOTIF_PRESENT_MODAL, object: nil, userInfo: loginDict)
    }
    
    func presentModal(_ notif: Notification) {
       
        if modalBGView == nil {
            modalBGView = ClickBlockingView()
            modalBGView.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview(modalBGView, positioned: .above, relativeTo: loginStack)
            let topCn = NSLayoutConstraint(item: modalBGView, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1, constant: 50)
            let leftCn = NSLayoutConstraint(item: modalBGView, attribute: .left, relatedBy: .equal, toItem: view, attribute: .left, multiplier: 1, constant: 0)
            let rightCn = NSLayoutConstraint(item: modalBGView, attribute: .right, relatedBy: .equal, toItem: view, attribute: .right, multiplier: 1, constant: 0)
            let bottomCn = NSLayoutConstraint(item: modalBGView, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 1, constant: 0)
            
            view.addConstraints([topCn, leftCn, rightCn, bottomCn])
            modalBGView.layer?.backgroundColor = CGColor.black
            modalBGView.alphaValue = 0.4
            
        }
    }
}
