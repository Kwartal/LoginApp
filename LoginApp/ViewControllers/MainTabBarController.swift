//
//  MainTabBarController.swift
//  LoginApp
//
//  Created by Богдан Баринов on 16.08.2022.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    // MARK: - UI Elements
    let loginVC = WelcomeViewController()
    let profileVC = MorInfoViewController()
    
    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configureVC()
        tabBar.backgroundColor = .systemPink.withAlphaComponent(0.4)
        tabBar.tintColor = .yellow
    }
    
    // MARK: - Private Methods
    private func configureVC() {
        let loginImageVC = UIImage(systemName: "person.fill") ?? UIImage()
        let welcomeImageVC = UIImage(systemName: "person.crop.circle.fill") ?? UIImage()
        
        viewControllers =
        [
            generateNavigationController(rootViewController: loginVC, tittle: "Home", image: loginImageVC),
            generateNavigationController(rootViewController: profileVC, tittle: "User", image: welcomeImageVC)
        ]
    }
    private func generateNavigationController(rootViewController: UIViewController, tittle: String, image: UIImage) -> UIViewController {
        let navigationVC = UINavigationController(rootViewController: rootViewController)
        navigationVC.tabBarItem.title = tittle
        navigationVC.tabBarItem.image = image
        return navigationVC
    }
}
