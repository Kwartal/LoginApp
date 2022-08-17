//
//  ProfileViewController.swift
//  LoginApp
//
//  Created by Богдан Баринов on 17.08.2022.
//

import UIKit

class ProfileViewController: UIViewController {
    
    private var nameLabel : UILabel = {
        var label = UILabel()
        label.textColor = .white
        label.adjustsFontSizeToFitWidth = true
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 20)
        return label
    }()
    
    private var surnameLabel : UILabel = {
        var label = UILabel()
        label.textColor = .white
        label.adjustsFontSizeToFitWidth = true
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 20)
        return label
    }()
    
    private var fromLabel : UILabel = {
        var label = UILabel()
        label.textColor = .white
        label.adjustsFontSizeToFitWidth = true
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 20)
        return label
    }()
    
    private var hobbyLabel : UILabel = {
        var label = UILabel()
        label.textColor = .white
        label.adjustsFontSizeToFitWidth = true
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 20)
        return label
    }()
    
    private var lastProfessionLabel : UILabel = {
        var label = UILabel()
        label.textColor = .white
        label.adjustsFontSizeToFitWidth = true
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 20)
        return label
    }()
    
    private var heightLabel : UILabel = {
        var label = UILabel()
        label.textColor = .white
        label.adjustsFontSizeToFitWidth = true
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 20)
        return label
    }()
    
    private var weightLabel : UILabel = {
        var label = UILabel()
        label.textColor = .white
        label.adjustsFontSizeToFitWidth = true
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 20)
        return label
    }()


    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        
        nameLabel.text = user.characteristic.name
        

        

//        surnameLabel.text = user.characteristic.surname
//        fromLabel.text = user.characteristic.from
//        hobbyLabel.text = user.characteristic.hobby
//        lastProfessionLabel.text = user.characteristic.lastProfession
//        heightLabel.text = user.characteristic.height
//        weightLabel.text = user.characteristic.weight
        
    }
    
    
    @objc private func backInMorInfoView() {
        navigationController?.dismiss(animated: true)

    }
    
    private func viewAddsubviews() {
        view.addSubview(nameLabel)
    }
    
    private func setupFrames() {
        nameLabel.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        nameLabel.center.x = view.center.x
        nameLabel.center.y = view.center.y
    }

}
