//
//  SearchVC.swift
//  Messenger
//
//  Created by Aleksey on 4/14/20.
//  Copyright © 2020 Aleksey Kabishau. All rights reserved.
//

import UIKit

class SearchVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
		configureViewController()
    }
	
	
	private func configureViewController() {
		view.backgroundColor = Color.white
		navigationController?.navigationBar.prefersLargeTitles = true
	}
}
