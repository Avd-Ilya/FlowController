//
//  AppFlowController.swift
//  FlowController
//
//  Created by Avdeev Ilya Aleksandrovich on 06.05.2022.
//

import UIKit

final class AppFlowController: UIViewController {
    
    var authorized = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = #colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1)
        print("AppFlowController")
    }
    
    func start() {
        let flag = UserDefaults.standard.bool(forKey: "isAuthorized")
        self.authorized = flag
        print("is Authorized - \(flag)")
        
        if authorized {
            startCabinet()
        } else {
            startTutorial()
        }
    }
    
    func startTutorial() {
        let tutorialFlowController = TutorialFlowController()
        tutorialFlowController.delegate = self
        add(childController: tutorialFlowController)
        tutorialFlowController.start()
    }
    
    func startCabinet() {
        let cabinetFlowController = CabinetFlowController()
        cabinetFlowController.delegate = self
        add(childController: cabinetFlowController)
        cabinetFlowController.start()
    }
}

