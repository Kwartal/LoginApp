//
//  ProfileViewController.swift
//  LoginApp
//
//  Created by Богдан Баринов on 17.08.2022.
//

import UIKit

class ProfileViewController: UIViewController {

    var user: User
    
    private lazy var nameLabel = UILabel(font: .systemFont(ofSize: 20))
    private lazy var surnameLabel = UILabel(font: .systemFont(ofSize: 20))
    private lazy var hobbyLabel = UILabel(font: .systemFont(ofSize: 20))
    private lazy var lastProfessionLabel = UILabel(font: .systemFont(ofSize: 20))
    private lazy var heightLabel = UILabel(font: .systemFont(ofSize: 20))
    private lazy var weightLabel = UILabel(font: .systemFont(ofSize: 20))

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
    }
    
}

    extension ProfileViewController {
        
        private func setupSubviews() {
            view.backgroundColor = .white
//            view.addSubviews(titleLabel, menuItemImageView, menuItemTitleLabel, menuItemPricePerBaseAmount, separatorView, estimatedCostTitleLabel, estimatedCostValueLabel, specifyActualWeightLabel, whiteViewForTextEditing, measureTextLabel, bottomContainerView, bottomOkButton)
//            navigationController?.navigationBar.topItem?.title = "";
//            view.backgroundColor = .red
//            configureConstraints()
//
//            separatorView.backgroundColor = UIColor(hexString: "4C4C4E")
//
//            // FIXME: поменять
//            menuItemImageView.backgroundColor = .yellow
//            menuItemTitleLabel.text = "Доdfgefvрадо"
//            menuItemPricePerBaseAmount.text = "800 за 100 гр."
//            estimatedCostTitleLabel.text = "Расчетная стоимость"
//            estimatedCostValueLabel.text = "₽ 800"
//            specifyActualWeightLabel.text = "Укажите фактическую массу, гр"
//
//            whiteViewForTextEditing.backgroundColor = .white
//            whiteViewForTextEditing.layer.cornerRadius = 10
//
//            bottomContainerView.backgroundColor = UIColor(hexString: "2B2B2F")
//
//            bottomOkButton.backgroundColor = UIColor(hexString: "9D9D9C")
//            bottomOkButton.setTitle(OK_Title, for: .normal)
//            bottomOkButton.layer.cornerRadius = 5
//
//            bottomOkButton.addTarget(self, action: #selector(bottomOkButtonPressed), for: .touchUpInside)
            
            
        }
        private func configureConstraints() {
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


