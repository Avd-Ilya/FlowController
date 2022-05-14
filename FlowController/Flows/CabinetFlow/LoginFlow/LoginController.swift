//
//  CabinetController.swift
//  FlowController
//
//  Created by Avdeev Ilya Aleksandrovich on 06.05.2022.
//

import UIKit

class LoginController: UIViewController {
    
    var didFinish: (() -> Void)?

    let loginButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), for: .normal)
        button.setTitle("Войти", for: .normal)
        button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        
        return button
    }()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("LoginController")
        
        self.navigationItem.title = "Login"
        self.view.backgroundColor = #colorLiteral(red: 0.3098039329, green: 0.01568627544, blue: 0.1294117719, alpha: 1)
        
        self.view.addSubview(loginButton)

        loginButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        loginButton.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        loginButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
        loginButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
    }
    
    @objc func buttonPressed() {
        let authorizationController = AuthorizationController()

        authorizationController.modalPresentationStyle = .pageSheet
        authorizationController.didFinish = { [weak self] in
            guard let self = self else { return }
            
            self.dismiss(animated: true, completion: nil)
        }
        
        present(authorizationController, animated: true, completion: nil)
    }
}

