//
//  LogoutController.swift
//  FlowController
//
//  Created by Avdeev Ilya Aleksandrovich on 06.05.2022.
//

import UIKit

public class LogoutController: UIViewController {
    
    public var didFinish: (() -> Void)?

    let logoutButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), for: .normal)
        button.setTitle("Выход", for: .normal)
        button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        
        return button
    }()
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        print("LogoutController")

        view.backgroundColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
        self.navigationItem.title = "Logout"

        self.view.addSubview(logoutButton)
        
        logoutButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        logoutButton.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        logoutButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
        logoutButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    @objc func buttonPressed() {
        UserDefaults.standard.setValue(false, forKey: "isAuthorized")
        didFinish?()
    }
}
