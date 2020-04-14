//
//  MButton.swift
//  Messenger
//
//  Created by Aleksey on 4/12/20.
//  Copyright © 2020 Aleksey Kabishau. All rights reserved.
//

import UIKit

class MButton: UIButton {

	override init(frame: CGRect) {
		super.init(frame: frame)
		configure()
	}
	
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	
	convenience init(title: String, titleColor: UIColor, backgroundColor: UIColor, isShadow: Bool = true) {
		self.init(frame: .zero)
		self.setTitle(title, for: .normal)
		self.setTitleColor(titleColor, for: .normal)
		self.backgroundColor = backgroundColor
		if isShadow {
			self.layer.shadowColor = UIColor.black.cgColor
            self.layer.shadowRadius = 4
            self.layer.shadowOpacity = 0.2
            self.layer.shadowOffset = CGSize(width: 0, height: 4)
		}
		
	}
	
	
	private func configure() {
		translatesAutoresizingMaskIntoConstraints = false
		titleLabel?.font = UIFont.preferredFont(forTextStyle: .title2)
		layer.cornerRadius = 4
	}
}
