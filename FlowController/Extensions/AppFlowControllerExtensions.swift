//
//  AppFlowControllerExtensions.swift
//  FlowController
//
//  Created by Avdeev Ilya Aleksandrovich on 06.05.2022.
//

import Foundation

extension AppFlowController: CabinetFlowControllerDelegate {
    func cabinetFlowControllerDidFinish(_ flowController: CabinetFlowController) {
        remove(childController: flowController)
        start()
    }
}

extension AppFlowController: TutorialFlowControllerDelegate {
    func tutorialFlowControllerDidFinish(_ flowController: TutorialFlowController) {
        remove(childController: flowController)
        startCabinet()
    }
}
