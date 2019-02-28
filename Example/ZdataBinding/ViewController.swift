//
//  ViewController.swift
//  ZdataBinding
//
//  Created by ABBAS TORABI on 12/4/1397 AP.
//  Copyright © 1397 ABBAS TORABI. All rights reserved.
//

import UIKit
import Pods_ZdataBinding_Example

class ViewController: UIViewController {
    
    var viewModel : ViewControllerViewModel! {
        didSet {
            // you can use this code for bind value from viewModel to textfiled or label or etc...
            viewModel.my_variable.bind = { [unowned self] in self.myTextField.text = $0 }
            viewModel.my_variable.bind = { [unowned self] in self.MyLabel.text = $0 }
        }
    }
    
    @IBOutlet weak var MyLabel: UILabel!
    @IBOutlet weak var myTextField: BindingTextField! {
        didSet {
            self.myTextField.bind { self.viewModel.my_variable.value = $0 }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel = ViewControllerViewModel()
        // you can add listener for hear value when changing
        viewModel.my_variable.bind = { [unowned self] in self.MyVariableOnChange(value: $0) }
    }
    // create listener function
    func MyVariableOnChange(value: String) {
        MyLabel.text = value
        myTextField.text = value
    }
    
    @IBAction func ResultBtn(_ sender: Any) {
        viewModel.dataBindingValidate()
    }
}

