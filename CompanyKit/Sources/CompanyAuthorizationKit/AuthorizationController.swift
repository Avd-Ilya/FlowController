//
//  AuthorizationController.swift
//  FlowController
//
//  Created by Avdeev Ilya Aleksandrovich on 07.05.2022.
//

import UIKit

public class AuthorizationController: UIViewController {
    
    public var didFinish: (() -> Void)?
    
    let AuthorizationButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), for: .normal)
        button.setTitle("Авторизация", for: .normal)
        button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        
        return button
    }()
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        print("AuthorizationController")
        
        view.backgroundColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
        
        self.navigationController?.isNavigationBarHidden = true
        
        self.view.addSubview(AuthorizationButton)
        
        AuthorizationButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        AuthorizationButton.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        AuthorizationButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
        AuthorizationButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    @objc func buttonPressed() {
        UserDefaults.standard.setValue(true, forKey: "isAuthorized")
        didFinish?()
    }

}
