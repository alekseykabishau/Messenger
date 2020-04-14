//
//  UISegmentedControl+Ext.swift
//  Messenger
//
//  Created by Aleksey on 4/11/20.
//  Copyright © 2020 Aleksey Kabishau. All rights reserved.
//

import UIKit

extension UISegmentedControl {
    
    convenience init(first: String, second: String) {
        self.init()
        self.insertSegment(withTitle: first, at: 0, animated: true)
        self.insertSegment(withTitle: second, at: 1, animated: true)
        self.selectedSegmentIndex = 0
    }
}
