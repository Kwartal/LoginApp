//
//  ViewController.swift
//  LoginApp
//
//  Created by Богдан Баринов on 12.08.2022.
//

import UIKit

final class LoginViewController: UIViewController {
    
    // MARK: - UI Elements
    
    let login = "1"
    let password = "1"
    
    private lazy var loginTextField: UITextField = {
        let textField = UITextField()
        textField.textColor = .black
        textField.font = .boldSystemFont(ofSize: 20)
        textField.backgroundColor = .quaternarySystemFill
        textField.placeholder = "Введите логин"
        textField.textAlignment = .left
        return textField
    }()
    
    private lazy var passwordTextField: UITextField = {
        let textField = UITextField()
        textField.textColor = .black
        textField.font = .boldSystemFont(ofSize: 20)
        textField.backgroundColor = .quaternarySystemFill
        textField.placeholder = "Введите пароль"
        textField.textAlignment = .left
        textField.autocapitalizationType = .none
        textField.isSecureTextEntry = true
        return textField
    }()
    
    private let loginButton: UIButton = {
        let button = UIButton()
        button.setTitle("Log In", for: .normal)
        button.tintColor = .red
        button.backgroundColor = .white
        button.setTitleColor(.link, for: .normal)
        return button
    }()
    
    private let forgotUserNameButton: UIButton = {
        let button = UIButton()
        button.setTitle("Forgot User Name?", for: .normal)
        button.setTitleColor(.link, for: .normal)
        button.titleLabel?.textAlignment = .center
        button.titleLabel?.font = .systemFont(ofSize: 14)
        return button
    }()
    
    private let forgotPasswordButton: UIButton = {
        let button = UIButton()
        button.setTitle("Forgot Password?", for: .normal)
        button.setTitleColor(.link, for: .normal)
        button.titleLabel?.textAlignment = .center
        button.titleLabel?.font = .systemFont(ofSize: 14)
        return button
    }()
    
    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        title = "LoginView"
        
        addSubviews()
        setupFrames()
        
        loginButton.addTarget(self,
                              action: #selector(loginButtonDidTap),
                              for: .touchUpInside)
        
        forgotUserNameButton.addTarget(self,
                                       action: #selector(forgotUserNameButtonPressed),
                                       for: .touchUpInside)
        forgotPasswordButton.addTarget(self,
                                       action: #selector(forgotPasswordButtonPressed),
                                       for: .touchUpInside)
        
        registerKeyboardNotification()
    }
    
    // MARK: - Public methods
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    // MARK: - Private Methods
    private func addSubviews() {
        view.addSubview(loginTextField)
        view.addSubview(passwordTextField)
        view.addSubview(loginButton)
        view.addSubview(forgotUserNameButton)
        view.addSubview(forgotPasswordButton)
    }
    
    private func setupFrames() {
        loginTextField.frame = CGRect(x: 0, y: 300, width: 300, height: 30)
        loginTextField.center.x = view.center.x
        
        passwordTextField.frame = CGRect(x: 0,
                                         y: loginTextField.frame.maxY + 50,
                                         width: 300,
                                         height: 30)
        passwordTextField.center.x = view.center.x
        
        loginButton.frame = CGRect(x: 0,
                                   y: passwordTextField.frame.maxY + 40 ,
                                   width: 60,
                                   height: 30)
        loginButton.center.x = view.center.x
        
        forgotUserNameButton.frame = CGRect(x: 30,
                                            y: loginButton.frame.maxY + 40,
                                            width: 150,
                                            height: 30)
        forgotPasswordButton.frame = CGRect(x: view.frame.maxX - 180,
                                            y: loginButton.frame.maxY + 40,
                                            width: 150,
                                            height: 30)
    }
    
    @objc private func loginButtonDidTap() {
        if loginTextField.text == login && passwordTextField.text == password {
        let welcomeVC = WelcomeViewController()
            welcomeVC.loginLabel.text = "Welcome, \(loginTextField.text ?? "")"
        let vc = MainTabBarController()
            vc.modalPresentationStyle = .fullScreen
            present(vc, animated: false) {
                self.loginTextField.text = ""
                self.passwordTextField.text = ""
                
            }

//            navigationController?.pushViewController(vc, animated: true)
        
    
        } else {
            let alertController = UIAlertController(title: "Invalid login and password!",
                                                    message: "Please, enter current login and password",
                                                    preferredStyle: .alert)
            let action = UIAlertAction(title: "ok", style: .default)
            alertController.addAction(action)
            present(alertController, animated: true, completion: nil)

        }
        
    }
    
    @objc private func forgotUserNameButtonPressed() {
        let alertController = UIAlertController(title: "Oops!",
                                                message: "Your name is Bogdan",
                                                preferredStyle: .alert)
        let action = UIAlertAction(title: "ok", style: .default)
        alertController.addAction(action)
        present(alertController, animated: true, completion: nil)
        
        
    }
    
    @objc private func forgotPasswordButtonPressed() {
        let alertController = UIAlertController(title: "Oops!",
                                                message: "Your password is qwerty123",
                                                preferredStyle: .alert)
        let action = UIAlertAction(title: "ok", style: .default)
        alertController.addAction(action)
        present(alertController, animated: true, completion: nil)
    }
    
    private func registerKeyboardNotification() {
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(keyboardWillShow),
                                               name: UIResponder.keyboardWillShowNotification,
                                               object: nil)
         NotificationCenter.default.addObserver(self,
                                                selector: #selector(keyboardWillHide),
                                                name: UIResponder.keyboardWillHideNotification,
                                                object: nil)
    }
    
    @objc private func keyboardWillShow(notification: NSNotification) {
        if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
            if self.view.frame.origin.y == 0 {
                self.view.frame.origin.y -= keyboardSize.height - 200
            }
        }
    }
    
    @objc private func keyboardWillHide(notification: NSNotification) {
        if self.view.frame.origin.y != 0 {
            self.view.frame.origin.y = 0
        }
    }

}
