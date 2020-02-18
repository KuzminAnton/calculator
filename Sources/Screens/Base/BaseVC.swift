//
//  BaseVC.swift
//  LoginForm
//
//  Created by Dmitriy Sorochinskiy on 16.04.18.
//  Copyright © 2018 user. All rights reserved.
//

import UIKit
import KRProgressHUD

class BaseVC: UIViewController, BaseVCProtocol {
    
    var keyboardIsOpened: Bool = false
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
        self.view.layoutIfNeeded()
    }
    
    func subscribeToKeyboardNotifications() {
        let center = NotificationCenter.default
        center.addObserver(self,
                           selector: #selector(keyboardWillShow(notification:)),
                           name: .UIKeyboardWillShow,
                           object: nil)
        
        center.addObserver(self,
                           selector: #selector(keyboardWillHide(notification:)),
                           name: .UIKeyboardWillHide,
                           object: nil)
    }
    
    func unsubscribeFromKeyboardNotifications() {
        let center = NotificationCenter.default
        center.removeObserver(self, name: .UIKeyboardWillShow, object: nil)
        center.removeObserver(self, name: .UIKeyboardWillHide, object: nil)
    }
    
    @objc func keyboardWillShow(notification: NSNotification) {
        keyboardIsOpened = true
    }
    
    @objc func keyboardWillHide(notification: NSNotification) {
        keyboardIsOpened = false
    }
    
    func showProgress() {
        let progress = KRProgressHUD.showOn(self)
        progress.show()
    }
    
    func hideProgress() {
        KRProgressHUD.dismiss()
    }
}
