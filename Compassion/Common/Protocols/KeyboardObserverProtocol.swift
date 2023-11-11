//
//  KeyboardObserverProtocol.swift
//  Compassion
//
//  Created by Casper Daris on 13/05/2021.
//

import UIKit

//sourcery: AutoMockable
protocol KeyboardObserverProtocol {
    func setupKeyboardObserver()
}

class KeyboardObserver: KeyboardObserverProtocol {
    
    /// The view to scroll
    private weak var view: UIView?
    
    init(view: UIView) {
        self.view = view
        setupKeyboardObserver()
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    func setupKeyboardObserver() {
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(keyboardWillShow),
                                               name: UIResponder.keyboardWillShowNotification,
                                               object: nil)
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(keyboardWillHide),
                                               name: UIResponder.keyboardWillHideNotification,
                                               object: nil)
    }
    
    @objc func keyboardWillShow(notification: NSNotification) {
        if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
            if self.view?.frame.origin.y == 0 {
                self.view?.frame.origin.y -= (keyboardSize.height / 2)
            }
        }
    }
    
    @objc func keyboardWillHide(notification: NSNotification) {
        if self.view?.frame.origin.y != 0 {
            self.view?.frame.origin.y = 0
        }
    }
    
    // MARK: - Hide keyboard when user taps on the view
    func hideKeyboardOnTap() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(
            target: self,
            action: #selector(dismissKeyboard)
        )
        view?.addGestureRecognizer(tap)
    }
    
    /// Dismiss the keyboard
    @objc func dismissKeyboard() {
        view?.endEditing(true)
    }
}
