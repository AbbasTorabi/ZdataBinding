//
//  ViewControllerViewModel.swift
//  ZdataBinding_Example
//
//  Created by ABBAS TORABI on 12/4/1397 AP.
//  Copyright © 1397 ABBAS TORABI. All rights reserved.
//

import UIKit
import Pods_ZdataBinding_Example

class ViewControllerViewModel {
    
    var my_variable: Dynamic<String> = Dynamic("")
    func dataBindingValidate() {
        print("your textfiled data: ",my_variable.value!)
        if my_variable.value! == "hello from view" {
            my_variable.value = "hello from ViewModel"
        }
    }
    
}
