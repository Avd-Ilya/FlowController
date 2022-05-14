//
//  TutorialFlowController.swift
//  FlowController
//
//  Created by Avdeev Ilya Aleksandrovich on 06.05.2022.
//

import UIKit

class TutorialFlowController: UINavigationController {

    var didFinish: ((UIViewController) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("TutorialFlowController")
        
        view.backgroundColor = #colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1)
    }
    
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    func start() {
        let tutorialController = TutorialController()
        
        pushViewController(tutorialController, animated: true)
        tutorialController.didFinish = { [weak self] in
            guard let self = self else { return }
        
            self.didFinish?(self)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

