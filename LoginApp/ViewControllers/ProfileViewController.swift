//
//  ProfileViewController.swift
//  LoginApp
//
//  Created by Богдан Баринов on 17.08.2022.
//

import UIKit
import SnapKit

final class ProfileViewController: UIViewController {
    
    private var user: User
    
    private lazy var nameLabel = UILabel(font: .systemFont(ofSize: 24, weight: .semibold))
    private lazy var surnameLabel = UILabel(font: .systemFont(ofSize: 24, weight: .semibold))
    private lazy var hobbyLabel = UILabel(font: .systemFont(ofSize: 20))
    private lazy var lastProfessionLabel = UILabel(font: .systemFont(ofSize: 20))
    private lazy var heightLabel = UILabel(font: .systemFont(ofSize: 20))
    private lazy var weightLabel = UILabel(font: .systemFont(ofSize: 20))
    private lazy var profileImageView = UIImageView()
    private lazy var separatorView = UIView()
    private lazy var backButton = UIButton()
    private lazy var secondSeparatorView = UIView()
    
    init(user: User) {
        self.user = user
        super.init(nibName: nil, bundle: nil)
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSubviews()
        configureConstraints()
        configure(with: user)
    }
    private func configure(with user: User) {
        nameLabel.text = user.characteristic.name
        surnameLabel.text = user.characteristic.surname
        heightLabel.text = "Рост: \(user.characteristic.height)"
        weightLabel.text = "Вес: \(user.characteristic.weight)"
        hobbyLabel.text = "Мои любимые хобби: \(user.characteristic.hobby)"
        lastProfessionLabel.text = "Последнее место работы: \(user.characteristic.lastProfession)"
    }
    
    @objc func backButtonPressed() {
        dismiss(animated: true)
    }
}

extension ProfileViewController {
    
    private func setupSubviews() {
        view.backgroundColor = .link.withAlphaComponent(0.4)
        
        view.addSubviews(nameLabel, surnameLabel, hobbyLabel, lastProfessionLabel, heightLabel, weightLabel, profileImageView, separatorView, backButton, secondSeparatorView)
        
        profileImageView.image = UIImage(named: user.characteristic.photoImageName)
        profileImageView.clipsToBounds = true
        
        separatorView.backgroundColor = .white
        
        backButton.setImage(UIImage(systemName: "chevron.backward"), for: .normal)
        backButton.addTarget(self, action: #selector(backButtonPressed), for: .touchUpInside)
        backButton.tintColor = .white
        
        let largeConfig = UIImage.SymbolConfiguration(pointSize: 28, weight: .regular, scale: .default)
               
        let largeBoldDoc = UIImage(systemName: "chevron.backward", withConfiguration: largeConfig)

        backButton.setImage(largeBoldDoc, for: .normal)
        
        secondSeparatorView.backgroundColor = .white
        
        hobbyLabel.numberOfLines = 0
        lastProfessionLabel.numberOfLines = 0
        
                
    }
    private func configureConstraints() {
        
        profileImageView.snp.makeConstraints {
            $0.leading.equalToSuperview().offset(16) //левая часть относительно вью прикрепляется от вью на 16
            $0.top.equalToSuperview().offset(106)
            $0.size.equalTo(150)
        }
        // TODO: - Исправить хардкод
        profileImageView.layer.cornerRadius = 150 / 2
        
        nameLabel.snp.makeConstraints {
            $0.leading.equalTo(profileImageView.snp.trailing).offset(24)
            $0.top.equalToSuperview().offset(110)
        }
        
        surnameLabel.snp.makeConstraints {
            $0.leading.equalTo(nameLabel)
            $0.top.equalTo(nameLabel.snp.bottom).offset(8)
        }
        
        separatorView.snp.makeConstraints {
            $0.height.equalTo(1)
            $0.leading.trailing.equalToSuperview()
            $0.top.equalTo(profileImageView.snp.bottom).offset(38)
        }
        
        heightLabel.snp.makeConstraints {
            $0.leading.equalToSuperview().offset(16)
            $0.top.equalTo(separatorView.snp.bottom).offset(36)
        }
        
        weightLabel.snp.makeConstraints {
            $0.leading.equalToSuperview().offset(16)
            $0.top.equalTo(heightLabel.snp.bottom).offset(8)
        }
        
        backButton.snp.makeConstraints {
            $0.leading.equalToSuperview().offset(13)
            $0.top.equalToSuperview().offset(44)
        }
        
        secondSeparatorView.snp.makeConstraints {
            $0.height.equalTo(1)
            $0.leading.trailing.equalToSuperview()
            $0.top.equalTo(weightLabel.snp.bottom).offset(38)
        }
        
        lastProfessionLabel.snp.makeConstraints {
            $0.leading.trailing.equalToSuperview().inset(16)
            $0.top.equalTo(secondSeparatorView.snp.bottom).offset(36)
        }
        
        hobbyLabel.snp.makeConstraints {
            $0.leading.trailing.equalToSuperview().inset(16)
            $0.top.equalTo(lastProfessionLabel.snp.bottom).offset(8)
        }
        
        
        
        
        
        //               titleLabel.snp.makeConstraints {
        //                   $0.centerX.equalToSuperview()
        //                   $0.top.equalToSuperview().offset(56)
        //               }
        //
        //               menuItemImageView.snp.makeConstraints {
        //                   $0.size.equalTo(100)
        //                   $0.leading.equalToSuperview().offset(20)
        //                   $0.top.equalTo(titleLabel.snp.bottom).offset(21)
        //               }
        //
        //               menuItemTitleLabel.snp.makeConstraints {
        //                   $0.leading.equalTo(menuItemImageView.snp.trailing).offset(16)
        //                   $0.top.equalTo(titleLabel.snp.bottom).offset(25)
        //               }
        //
        //               menuItemPricePerBaseAmount.snp.makeConstraints {
        //                   $0.leading.equalTo(menuItemTitleLabel)
        //                   $0.top.equalTo(menuItemTitleLabel.snp.bottom).offset(4)
        //               }
        //
        //
        //               separatorView.snp.makeConstraints {
        //                   $0.leading.trailing.equalToSuperview()
        //                   $0.top.equalTo(menuItemImageView.snp.bottom).offset(18)
        //                   $0.height.equalTo(1)
        //               }
        //
        //               estimatedCostTitleLabel.snp.makeConstraints {
        //                   $0.leading.equalToSuperview().offset(20)
        //                   $0.top.equalTo(separatorView.snp.bottom).offset(32)
        //               }
        //
        //               estimatedCostValueLabel.snp.makeConstraints {
        //                   $0.leading.equalTo(estimatedCostTitleLabel)
        //                   $0.top.equalTo(estimatedCostTitleLabel.snp.bottom).offset(10)
        //               }
        //
        //               specifyActualWeightLabel.snp.makeConstraints {
        //                   $0.leading.equalTo(estimatedCostValueLabel)
        //                   $0.top.equalTo(estimatedCostValueLabel.snp.bottom).offset(32)
        //               }
        //
        //               whiteViewForTextEditing.snp.makeConstraints {
        //                   $0.leading.trailing.equalToSuperview().inset(20)
        //                   $0.top.equalTo(specifyActualWeightLabel.snp.bottom).offset(10)
        //                   $0.height.equalTo(46)
        //               }
        //
        //               measureTextLabel.snp.makeConstraints {
        //                   $0.leading.trailing.equalTo(whiteViewForTextEditing).inset(16)
        //                   $0.centerY.equalTo(whiteViewForTextEditing)
        //               }
        //
        //               bottomContainerView.snp.makeConstraints {
        //                   $0.height.equalTo(122)
        //                   $0.bottom.equalToSuperview()
        //                   $0.leading.trailing.equalToSuperview()
        //               }
        //
        //               bottomOkButton.snp.makeConstraints {
        //                   $0.leading.trailing.equalToSuperview().inset(16)
        //                   $0.top.equalTo(bottomContainerView.snp.top).offset(32)
        //               }
        //           }
        
    }
}


