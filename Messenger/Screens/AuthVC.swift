//
//  AuthVC.swift
//  Messenger
//
//  Created by Aleksey on 0229..20.
//  Copyright © 2020 Aleksey Kabishau. All rights reserved.
//

import UIKit

class AuthVC: UIViewController {
    
    let logoImageView = UIImageView(image: #imageLiteral(resourceName: "Logo"), contentMode: .scaleAspectFit)
	
    let googleLabel = UILabel(text: "Get started with")
	let googleButton = GoogleButton(title: "Google", titleColor: Color.black, backgroundColor: Color.white)
	
    let emailLabel = UILabel(text: "Or sign up with")
	let emailButton = MButton(title: "Email", titleColor: Color.white, backgroundColor: Color.black)
	
    let alreadyOnboardLabel = UILabel(text: "Already have an account?")
	let loginButton = MButton(title: "Login", titleColor: Color.red, backgroundColor: Color.white)
    
	
    override func viewDidLoad() {
        super.viewDidLoad()
        
		view.backgroundColor = Color.background
        setupConstraints()
    }
    
	
    private func setupConstraints() {
		
        view.addSubview(logoImageView)
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        
        let googleView = ButtonFormView(label: googleLabel, button: googleButton)
        let emailView = ButtonFormView(label: emailLabel, button: emailButton)
        let loginView = ButtonFormView(label: alreadyOnboardLabel, button: loginButton)
        
        let stackView = UIStackView(arrangedSubviews: [googleView, emailView, loginView], axis: .vertical, spacing: 40)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(stackView)
        
        
        NSLayoutConstraint.activate([
            logoImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            stackView.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 100),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40)
        ])
    }
}
