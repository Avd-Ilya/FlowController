//
//  CabinetFlowController.swift
//  FlowController
//
//  Created by Avdeev Ilya Aleksandrovich on 06.05.2022.
//

import UIKit

class CabinetFlowController: UIViewController {

    private var embeddedTabBarController: UITabBarController!
    weak var delegate: CabinetFlowControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("CabinetFlowController")
    }
    
    init() {
        super.init(nibName: nil, bundle: nil)
        
        embeddedTabBarController = UITabBarController()
        add(childController: embeddedTabBarController)
    }
    
    func start() {
        let loginController = LoginController()
        let logoutController = LogoutController()

        logoutController.delegate = self
        loginController.delegate = self
        
        loginController.tabBarItem = loginController.myTabBarItem
        logoutController.tabBarItem = logoutController.myTabBarItem

        let controllerArray = [loginController, logoutController]
        embeddedTabBarController.viewControllers = controllerArray.map{ UINavigationController.init(rootViewController: $0)}
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


