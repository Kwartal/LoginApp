//
//  ProfileViewController.swift
//  LoginApp
//
//  Created by Богдан Баринов on 16.08.2022.
//

import UIKit

class MorInfoViewController: UIViewController {
    
    // MARK: - UI Elements
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
    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .link
        addsubviews()
        configureLayout()
        morInfoButton.addTarget(self,
                                action: #selector(morInfoButtonDidTap),
                                for: .touchUpInside)
    }
    // MARK: - Private Methods
    private func addsubviews() {
        view.addSubview(morInfoButton)
    }
    
    private func configureLayout() {
        morInfoButton.frame = CGRect(x: 0, y: 0, width: 120, height: 60)
        morInfoButton.center.x = view.center.x
        morInfoButton.center.y = view.center.y
    }
    /// Не дожал с паролем и логином, пока оставлю так 
    @objc private func morInfoButtonDidTap() {
        let user = User(login: "1", password: "1", characteristic: Person(name: "Богдан", surname: "Баринов", from: "Москва", hobby: "Спорт, музыка, чтение", lastProfession: "Категорийный менеджер", height: "186", weight: "86", photoImageName: "Image"))
        UserDefaults.standard.set(true, forKey: "")
        UserDefaults.standard.set(1, forKey: "Key")
        UserDefaults.standard.set("TEST", forKey: "Key")
        let vc = ProfileViewController(user: user)
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: false)
        
    }
}
