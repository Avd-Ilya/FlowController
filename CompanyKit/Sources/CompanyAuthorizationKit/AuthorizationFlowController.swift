//
//  AuthorizationFlowController.swift
//  FlowController
//
//  Created by Avdeev Ilya Aleksandrovich on 20.05.2022.
//

import UIKit

public class AuthorizationFlowController: UINavigationController {
    public var didFinish: (() -> Void)?
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        print("AuthorizationFlowController")
        
        view.backgroundColor = #colorLiteral(red: 0.09019608051, green: 0, blue: 0.3019607961, alpha: 1)
    }
    
    public override init(rootViewController: UIViewController) {
        super.init(rootViewController: rootViewController)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func start() {
        guard let authorizationController = self.viewControllers.first as? AuthorizationController else { return }
        
        authorizationController.didFinish = { [weak self] in
            guard let self = self else { return }
            
            self.dismiss(animated: true, completion: nil)
        }
    }
}
