//
//  MTabBarController.swift
//  Messenger
//
//  Created by Aleksey on 4/14/20.
//  Copyright © 2020 Aleksey Kabishau. All rights reserved.
//

import UIKit

class MTabBarController: UITabBarController {
	
	override func viewDidLoad() {
		super.viewDidLoad()
		UITabBar.appearance().tintColor = .systemPurple
		viewControllers = [createSearchVC(), createMessagesListVC()]
	}
	
	
	private func createSearchVC() -> UINavigationController {
		let searchVC = SearchVC()
		searchVC.title = "Search"
		searchVC.tabBarItem = UITabBarItem(title: "Search", image: UIImage(systemName: "person.2"), tag: 0)
		return UINavigationController(rootViewController: searchVC)
	}
	
	
	private func createMessagesListVC() -> UINavigationController {
		let messagesListVC = MessagesListVC()
		messagesListVC.title = "Messages"
		messagesListVC.tabBarItem = UITabBarItem(title: "Messages", image: UIImage(systemName: "bubble.left.and.bubble.right"), tag: 1)
		return UINavigationController(rootViewController: messagesListVC)
	}
}
