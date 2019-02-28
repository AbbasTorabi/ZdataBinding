//
//  Dynamic.swift
//  Pods-ZdataBinding_Example
//  Created by ABBAS TORABI on 12/4/1397 AP.
//  Copyright © 1397 ABBAS TORABI. All rights reserved.
//

import UIKit

// dynamic class for create variable with any type & that have bind & value
public class Dynamic<T> {
    public var bind :(T) -> () = { _ in }
    public var value :T? {
        didSet {
            bind(value!)
        }
    }
    public init(_ v :T) {
        value = v
    }
}
