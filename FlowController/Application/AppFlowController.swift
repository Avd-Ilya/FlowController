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

        add(childController: tutorialFlowController)
        tutorialFlowController.start()
        tutorialFlowController.didFinish = { [weak self] vc in
            guard let self = self else { return }
            
            self.remove(childController: vc)
            self.startCabinet()
        }
    }
    
    func startCabinet() {
        let cabinetFlowController = CabinetFlowController()
        add(childController: cabinetFlowController)
        cabinetFlowController.start()
        
        cabinetFlowController.didFinish = { [weak self] vc in
            guard let self = self else { return }
            
            self.remove(childController: vc)
            self.start()
        }
    }
}

