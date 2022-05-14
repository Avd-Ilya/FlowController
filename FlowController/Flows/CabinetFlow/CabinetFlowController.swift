//
//  CabinetFlowController.swift
//  FlowController
//
//  Created by Avdeev Ilya Aleksandrovich on 06.05.2022.
//

import UIKit

class CabinetFlowController: UITabBarController {

    var didFinish: ((UIViewController) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("CabinetFlowController")
    }
    
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    func start() {
        let loginFlowController = LoginFlowController()
        let logoutFlowController = LogoutFlowController()

        loginFlowController.start()
        logoutFlowController.start()
        
        logoutFlowController.didFinish = {[weak self] in
            guard let self = self else { return }
            
            self.didFinish?(self)
        }
    
        self.viewControllers = [loginFlowController, logoutFlowController]
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


