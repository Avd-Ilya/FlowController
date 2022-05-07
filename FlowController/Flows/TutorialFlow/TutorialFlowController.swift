//
//  TutorialFlowController.swift
//  FlowController
//
//  Created by Avdeev Ilya Aleksandrovich on 06.05.2022.
//

import UIKit

class TutorialFlowController: UIViewController {

    private var embeddedNavigationController: UINavigationController!
    weak var delegate: TutorialFlowControllerDelegate?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("TutorialFlowController")
        
        view.backgroundColor = #colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1)
    }
    
    init() {
        super.init(nibName: nil, bundle: nil)
        
        embeddedNavigationController = UINavigationController()
        add(childController: embeddedNavigationController)
    }
    
    func start() {
        let tutorialController = TutorialController()
        tutorialController.delegate = self
        embeddedNavigationController.viewControllers = [tutorialController]
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

