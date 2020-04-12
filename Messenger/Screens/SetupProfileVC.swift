//
//  SetupProfileVC.swift
//  Messenger
//
//  Created by Aleksey on 4/11/20.
//  Copyright © 2020 Aleksey Kabishau. All rights reserved.
//

import UIKit

class SetupProfileVC: UIViewController {
	
	let welcomeLabel = UILabel(text: "Set up profile!", font: .avenir26())
	
	let fullImageView = AddPhotoView()
	
	let fullNameLabel = UILabel(text: "Full name")
	let aboutmeLabel = UILabel(text: "About me")
	let sexLabel = UILabel(text: "Sex")
	
	let fullNameTextField = OneLineTextField(textFieldFont: .avenir20())
	let aboutMeTextField = OneLineTextField(textFieldFont: .avenir20())
	let sexSegmentedControl = UISegmentedControl(first: "Male", second: "Femail")
	let goToChatsButton = UIButton(title: "Go to chats!", titleColor: .white, backgroundColor: .buttonDark(), font: UIFont.avenir20(), isShadow: false, cornerRadius: 4)
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		view.backgroundColor = .white
		setupConstraints()
	}
}


// MARK: - Setup constraints
extension SetupProfileVC {
	private func setupConstraints() {
		let fullNameStackView = UIStackView(arrangedSubviews: [fullNameLabel, fullNameTextField], axis: .vertical, spacing: 0)
		let aboutMeStackView = UIStackView(arrangedSubviews: [aboutmeLabel, aboutMeTextField], axis: .vertical, spacing: 0)
		let sexStackView = UIStackView(arrangedSubviews: [sexLabel, sexSegmentedControl], axis: .vertical, spacing: 12)
		
		goToChatsButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
		
		let stackView = UIStackView(arrangedSubviews: [fullNameStackView, aboutMeStackView, sexStackView, goToChatsButton], axis: .vertical, spacing: 40)
		
		welcomeLabel.translatesAutoresizingMaskIntoConstraints = false
		fullImageView.translatesAutoresizingMaskIntoConstraints = false
		stackView.translatesAutoresizingMaskIntoConstraints = false
		
		view.addSubview(welcomeLabel)
		view.addSubview(fullImageView)
		view.addSubview(stackView)
		
		
		NSLayoutConstraint.activate([
			welcomeLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 60),
			welcomeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
		])
		
		NSLayoutConstraint.activate([
			fullImageView.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 40),
			fullImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
		])
		
		NSLayoutConstraint.activate([
			stackView.topAnchor.constraint(equalTo: fullImageView.bottomAnchor, constant: 40),
			stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
			stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40)
		])
	}
}
