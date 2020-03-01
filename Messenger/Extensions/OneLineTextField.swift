//
//  OneLineTextField.swift
//  Messenger
//
//  Created by Aleksey on 0301..20.
//  Copyright © 2020 Aleksey Kabishau. All rights reserved.
//

import UIKit

class OneLineTextField: UITextField {
    
    convenience init(textFieldFont: UIFont?) {
        self.init()
        
        font = textFieldFont
        borderStyle = .none
        translatesAutoresizingMaskIntoConstraints = false
        
        //var bottomView = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        let bottomView = UIView(frame: .zero)
        bottomView.translatesAutoresizingMaskIntoConstraints = false
        bottomView.backgroundColor = .textFieldLight()
        addSubview(bottomView)
        
        NSLayoutConstraint.activate([
            bottomView.bottomAnchor.constraint(equalTo: bottomAnchor),
            bottomView.leadingAnchor.constraint(equalTo: leadingAnchor),
            bottomView.trailingAnchor.constraint(equalTo: trailingAnchor),
            bottomView.heightAnchor.constraint(equalToConstant: 1)
        ])
    }
}
