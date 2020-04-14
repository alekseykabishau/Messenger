//
//  GoogleButton.swift
//  Messenger
//
//  Created by Aleksey on 4/12/20.
//  Copyright © 2020 Aleksey Kabishau. All rights reserved.
//

import UIKit

class GoogleButton: MButton {
	
	override init(frame: CGRect) {
		super.init(frame: frame)
		setLogo()
	}
	
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	
	private func setLogo() {
        let logo = UIImageView(image: #imageLiteral(resourceName: "googleLogo"), contentMode: .scaleAspectFit)
        logo.translatesAutoresizingMaskIntoConstraints = false
        addSubview(logo)
		
		NSLayoutConstraint.activate([
			logo.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 24),
			logo.centerYAnchor.constraint(equalTo: self.centerYAnchor)
		])
    }
}
