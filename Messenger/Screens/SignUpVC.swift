//
//  SignUpVC.swift
//  Messenger
//
//  Created by Aleksey on 0301..20.
//  Copyright © 2020 Aleksey Kabishau. All rights reserved.
//

import UIKit

class SignUpVC: UIViewController {
    
    let welcomeLabel = UILabel(text: "Good to see you!", font: UIFont.avenir26())
	
    let emailLabel = UILabel(text: "Email")
	let emailTextField = OneLineTextField(textFieldFont: UIFont.avenir20())
	
    let passwordLabel = UILabel(text: "Password")
	let passwordTextField = OneLineTextField(textFieldFont: UIFont.avenir20())
	
    let confirmPasswordLabel = UILabel(text: "Confirm password")
	let confirmPasswordTextField = OneLineTextField(textFieldFont: UIFont.avenir20())
	
	let signupButton = MButton(title: "Sign Up", titleColor: Color.white, backgroundColor: Color.black)
	
    let alreadyOnboardLabel = UILabel(text: "Already onboard?")
    let loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Login", for: .normal)
        button.setTitleColor(.buttonRed(), for: .normal)
        button.titleLabel?.font = UIFont.avenir20()
        return button
    }()

	
    override func viewDidLoad() {
        super.viewDidLoad()
        setupConstraints()
		view.backgroundColor = Color.background
    }
    
	
    private func setupConstraints() {
        
        let emailStackView = UIStackView(arrangedSubviews: [emailLabel, emailTextField], axis: .vertical, spacing: 0)
        let passwordStackView = UIStackView(arrangedSubviews: [passwordLabel, passwordTextField], axis: .vertical, spacing: 0)
        let confirmPasswordStackView = UIStackView(arrangedSubviews: [confirmPasswordLabel, confirmPasswordTextField], axis: .vertical, spacing: 0)
        signupButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        let stackView = UIStackView(arrangedSubviews: [emailStackView, passwordStackView, confirmPasswordStackView, signupButton], axis: .vertical, spacing: 40)
        
        loginButton.contentHorizontalAlignment = .leading
        let bottomStackView = UIStackView(arrangedSubviews: [alreadyOnboardLabel, loginButton], axis: .horizontal, spacing: 10)
        bottomStackView.alignment = .firstBaseline
        
        welcomeLabel.translatesAutoresizingMaskIntoConstraints = false
        stackView.translatesAutoresizingMaskIntoConstraints = false
        bottomStackView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(welcomeLabel)
        view.addSubview(stackView)
        view.addSubview(bottomStackView)
        
        NSLayoutConstraint.activate([
            welcomeLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 80),
            welcomeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            stackView.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 80),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            
            bottomStackView.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 40),
            bottomStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            bottomStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40)
        ])
    }
}
