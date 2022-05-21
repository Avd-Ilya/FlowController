//
//  LoginFlowController.swift
//  FlowController
//
//  Created by Avdeev Ilya Aleksandrovich on 14.05.2022.
//

import UIKit

class LoginFlowController: UINavigationController {
    
    var didFinish: (() -> Void)?
    
    let myTabBarItem: UITabBarItem = {
        let tabBarItem = UITabBarItem()
        tabBarItem.title = "Login"
        tabBarItem.image = UIImage(systemName: "person.crop.circle.fill.badge.plus")
        return tabBarItem
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("LoginFlowController")
        
        view.backgroundColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
    }
    
    override init(rootViewController: UIViewController) {
        super.init(rootViewController: rootViewController)
    }
    
    func start() {
        self.tabBarItem = myTabBarItem
        
        guard let loginController = self.viewControllers.first as? LoginController else { return }
        
        loginController.didFinish = { [weak self] in
            guard let self = self else { return }
            
            self.startAuthorization()
        }
    }
    
    func startAuthorization() {
        let authorizationController = AuthorizationController()
        let authorizationFlowController = AuthorizationFlowController(rootViewController: authorizationController)
        
        authorizationFlowController.modalPresentationStyle = .pageSheet
        authorizationController.didFinish = { [weak self] in
            guard let self = self else { return }
            
            self.dismiss(animated: true, completion: nil)
            self.didFinish?()
        }
        
        present(authorizationFlowController, animated: true, completion: nil)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
