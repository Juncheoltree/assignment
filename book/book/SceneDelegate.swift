//
//  SceneDelegate.swift
//  book
//
//  Created by 김준철 on 5/12/24.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {

        guard let scene = (scene as? UIWindowScene) else { return }
        window = UIWindow(frame: scene.coordinateSpace.bounds)
        window?.windowScene = scene
        let tabBarVC = UITabBarController()
        
        let fisrtVC = SearchViewController()
        let secondVC = StoreViewController()
        
        let nav1 = UINavigationController(rootViewController: fisrtVC)
        let nav2 = UINavigationController(rootViewController: secondVC)
        
        //뷰컨트롤러 타이틀
        nav1.navigationBar.topItem?.title = "보고싶은 책 검색하기"
        nav2.navigationBar.topItem?.title = "담은 책"
        
        //탭바 아이콘&타이틀
        nav1.tabBarItem = UITabBarItem(title: "검색하기", image: UIImage(systemName: "hand.point.up.left.and.text"), tag: 0)
        nav2.tabBarItem = UITabBarItem(title: "담은 책", image: UIImage(systemName: "cart"), tag: 1)
        
        tabBarVC.setViewControllers([nav1, nav2], animated: true)
        
        window?.rootViewController = tabBarVC
        window?.makeKeyAndVisible()
    }
    
}

