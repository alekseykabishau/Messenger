//
//  UILabel+Ext.swift
//  Messenger
//
//  Created by Aleksey on 0229..20.
//  Copyright © 2020 Aleksey Kabishau. All rights reserved.
//

import UIKit

extension UILabel {
    
    convenience init(text: String, font: UIFont? = UIFont.avenir20()) {
        self.init()
        
        self.text = text
        self.font = font
    }
}
