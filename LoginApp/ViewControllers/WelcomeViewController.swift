//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Богдан Баринов on 12.08.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    // MARK: - UI Elements
    var textWelcomeVC = "2"
    
    var loginLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.adjustsFontSizeToFitWidth = true
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 40)
        return label
    }()
    
    private var smileLabel: UILabel = {
        let label = UILabel()
        label.text = "👋🏽"
        label.textColor = .white
        label.font = .systemFont(ofSize: 60)
        return label
    }()
    
    private var logOutButton: UIButton = {
        let button = UIButton()
        button.setTitle("Log out", for: .normal)
        button.tintColor = .red
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .clear
        button.titleLabel?.font = .systemFont(ofSize: 30)
        return button
    }()
    
    private var gradientLayer: CAGradientLayer = {
        let layer = CAGradientLayer()
        layer.colors = [UIColor.systemPink.cgColor,
                        UIColor.systemPurple.cgColor,
                        UIColor.systemBlue.cgColor]
        return layer
    }()
  
    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupFrames()
        addSubviews()
        logOutButton.addTarget(self,
                               action: #selector(backInLoginVC),
                               for: .touchUpInside)
        loginLabel.text = textWelcomeVC
        
    }
    
    // MARK: - Private Methods
    private func addSubviews() {
        view.layer.addSublayer(gradientLayer)
        view.addSubview(loginLabel)
        view.addSubview(smileLabel)
        view.addSubview(logOutButton)

    }
    
    private func setupFrames() {
        loginLabel.frame = CGRect(x: 0, y: 240,
                                  width: 200, height: 40)
        loginLabel.center.x = view.center.x
        
        smileLabel.frame = CGRect(x: 0, y: loginLabel.frame.maxY + 30,
                                  width: 60, height: 60)
        smileLabel.center.x = view.center.x
        
        logOutButton.frame = CGRect(x: 0, y: view.frame.maxY - 180,
                                    width: 100, height: 50)
        logOutButton.center.x = view.center.x
        
        gradientLayer.frame = view.bounds
    }
    
    @objc private func backInLoginVC() {
        dismiss(animated: true)
        UserDefaults.standard.removeObject(forKey: "login")
        UserDefaults.standard.removeObject(forKey: "password")
    }
    
 
}

extension WelcomeViewController : UITabBarControllerDelegate {
    
//    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
//            if let navigationController = viewController as? UINavigationController,
//                navigationController.viewControllers.contains(where: { $0 is MoreViewController }) {
//                //show pop up view
//                return false
//            } else  {
//                return true
//            }
//        }
}
