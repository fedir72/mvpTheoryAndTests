//
//  SceneDelegate.swift
//  mvpSwiftDevelopersTutorial
//
//  Created by Fedii Ihor on 15.02.2022.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
    
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        let vc = AsemblyBuilder.createCommentModule()
        vc.title = "main module"
        let navVC = UINavigationController(rootViewController: vc)
        
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        window?.windowScene = windowScene
        window?.rootViewController = navVC
        window?.makeKeyAndVisible()
    }


}

