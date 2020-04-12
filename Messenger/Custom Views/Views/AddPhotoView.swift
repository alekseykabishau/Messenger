//
//  AddPhotoView.swift
//  Messenger
//
//  Created by Aleksey on 4/11/20.
//  Copyright © 2020 Aleksey Kabishau. All rights reserved.
//

import UIKit

class AddPhotoView: UIView {

    var circleImageView: UIImageView = {
       let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = #imageLiteral(resourceName: "avatar")
		imageView.contentMode = .scaleAspectFill
		//imageView.clipsToBounds = true
        imageView.layer.borderColor = UIColor.black.cgColor
        imageView.layer.borderWidth = 1
        return imageView
    }()
	
	let plusButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        let myImage = #imageLiteral(resourceName: "plus")
        button.setImage(myImage, for: .normal)
        button.tintColor = .buttonDark()
        return button
    }()
	
	
	override init(frame: CGRect) {
		super.init(frame: frame)
		configure()
	}
	
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	
	private func configure() {
		addSubview(circleImageView)
		addSubview(plusButton)
		
		NSLayoutConstraint.activate([
            circleImageView.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            circleImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            circleImageView.widthAnchor.constraint(equalToConstant: 100),
            circleImageView.heightAnchor.constraint(equalToConstant: 100),
			
			plusButton.leadingAnchor.constraint(equalTo: circleImageView.trailingAnchor, constant: 16),
            plusButton.centerYAnchor.constraint(equalTo: centerYAnchor),
            plusButton.widthAnchor.constraint(equalToConstant: 30),
            plusButton.heightAnchor.constraint(equalToConstant: 30)
        ])
		
		// TODO: - works but looks weird, fix it
		self.bottomAnchor.constraint(equalTo: circleImageView.bottomAnchor).isActive = true
        self.trailingAnchor.constraint(equalTo: plusButton.trailingAnchor).isActive = true
	}
	
	
	// TODO: - can't round button in init because autolayout will not be able to calculate image view frame - best practices?
	override func layoutSubviews() {
        super.layoutSubviews()
		print(#function)
        circleImageView.layer.masksToBounds = true
        circleImageView.layer.cornerRadius = circleImageView.frame.width / 2
    }
	
}
