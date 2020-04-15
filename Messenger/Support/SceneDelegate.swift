//
//  SceneDelegate.swift
//  Messenger
//
//  Created by Aleksey on 0229..20.
//  Copyright © 2020 Aleksey Kabishau. All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        window?.windowScene = windowScene
        window?.rootViewController = MTabBarController()
        window?.makeKeyAndVisible()
    }
}

