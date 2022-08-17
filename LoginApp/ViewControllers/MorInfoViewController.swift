//
//  ProfileViewController.swift
//  LoginApp
//
//  Created by Богдан Баринов on 16.08.2022.
//

import UIKit

class MorInfoViewController: UIViewController {
    
    private let user1 = User.getUser()
    
    private let morInfoButton: UIButton = {
        var button = UIButton()
        button.setTitle("Mor Info", for: .normal)
        button.setTitleColor(.red, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 40)
        button.tintColor = .purple
        button.titleLabel?.textAlignment = .center
        button.titleLabel?.adjustsFontSizeToFitWidth = true
        
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .link
        addsubviews()
        configureLayout()
        
        morInfoButton.addTarget(self,
                                action: #selector(morInfoButtonDidTap),
                                for: .touchUpInside)
    }
    
    func addsubviews() {
        view.addSubview(morInfoButton)
    }
    
    func configureLayout() {
        morInfoButton.frame = CGRect(x: 0, y: 0, width: 120, height: 60)
        morInfoButton.center.x = view.center.x
        morInfoButton.center.y = view.center.y
    }
    
    @objc func morInfoButtonDidTap() {
        
        let vc = ProfileViewController()
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: false)
        
//        navigationController?.pushViewController(ProfileViewController(), animated: true)
        
    }
    
}
