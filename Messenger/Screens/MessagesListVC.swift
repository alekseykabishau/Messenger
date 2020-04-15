//
//  MessagesListVC.swift
//  Messenger
//
//  Created by Aleksey on 4/14/20.
//  Copyright © 2020 Aleksey Kabishau. All rights reserved.
//

import UIKit

class MessagesListVC: UIViewController {
	
	var collectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
		configureViewController()
		configureCollectionView()
    }
	
	
	private func configureViewController() {
		view.backgroundColor = .white
		navigationController?.navigationBar.prefersLargeTitles = true
	}
	
	private func configureCollectionView() {
		
		collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: UICollectionViewFlowLayout())
		view.addSubview(collectionView)
		collectionView.backgroundColor = Color.white
		collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cellId")
		collectionView.delegate = self
		collectionView.dataSource = self
	}
}


extension MessagesListVC: UICollectionViewDelegate, UICollectionViewDataSource {
	
	func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		return 5
	}
	
	func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellId", for: indexPath)
		cell.backgroundColor = .systemPurple
		return cell
	}
	
	
}
