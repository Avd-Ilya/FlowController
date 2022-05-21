//
//  LogoutFlowController.swift
//  FlowController
//
//  Created by Avdeev Ilya Aleksandrovich on 14.05.2022.
//

import UIKit

class LogoutFlowController: UINavigationController {
    
    var didFinish: (() -> Void)?
    
    let myTabBarItem: UITabBarItem = {
        let tabBarItem = UITabBarItem()
        tabBarItem.title = "Logout"
        tabBarItem.image = UIImage(systemName: "person.crop.circle.fill.badge.minus")
        return tabBarItem
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("LogoutFlowController")
        
        view.backgroundColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
    }
    
    override init(rootViewController: UIViewController) {
        super.init(rootViewController: rootViewController)
    }
    
    func start() {
        self.tabBarItem = myTabBarItem
        
        guard let logoutController = self.viewControllers.first as? LogoutController else { return }

        logoutController.didFinish = { [weak self] in
            guard let self = self else { return }
            
            self.didFinish?()
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

