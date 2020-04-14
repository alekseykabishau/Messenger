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
	let fullNameTextField = OneLineTextField(textFieldFont: .avenir20())
	
	let aboutmeLabel = UILabel(text: "About me")
	let aboutMeTextField = OneLineTextField(textFieldFont: .avenir20())
	
	let sexLabel = UILabel(text: "Sex")
	let sexSegmentedControl = UISegmentedControl(first: "Male", second: "Female")
	
	let letsChatButton = MButton(title: "Let's Chat!", titleColor: Color.white, backgroundColor: Color.black)
	
	
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
		
		letsChatButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
		
		let stackView = UIStackView(arrangedSubviews: [fullNameStackView, aboutMeStackView, sexStackView, letsChatButton], axis: .vertical, spacing: 40)
		
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
