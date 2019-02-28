//
//  BindingTextField.swift
//  Pods-ZdataBinding_Example
//
//  Created by ABBAS TORABI on 12/4/1397 AP.
//  Copyright © 1397 ABBAS TORABI. All rights reserved.
//

import UIKit

// BindingTextField class use to bind value to dynamic variable
public class BindingTextField : UITextField {
    var textChanged :(String) -> () = { _ in }
    public func bind(callback :@escaping (String) -> ()) {
        self.textChanged = callback
        self.addTarget(self, action: #selector(textFieldDidChange), for: .editingChanged)
    }
    @objc func textFieldDidChange(_ textField :UITextField) {
    self.textChanged(textField.text!)
    }
}
