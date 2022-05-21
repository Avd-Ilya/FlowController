//
//  TutorialFlowController.swift
//  FlowController
//
//  Created by Avdeev Ilya Aleksandrovich on 06.05.2022.
//

import UIKit

public class TutorialFlowController: UINavigationController {
    
    //var vc: UIViewController
    public var didFinish: ((UIViewController) -> Void)?
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        print("TutorialFlowController")
        
        view.backgroundColor = #colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1)
    }
        
    public override init(rootViewController: UIViewController) {
        super.init(rootViewController: rootViewController)
    }
    
    public func start() {
        guard let tutorialController = self.viewControllers.first as? TutorialController else { return }

        tutorialController.didFinish = { [weak self] in
            guard let self = self else { return }

            self.didFinish?(self)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

