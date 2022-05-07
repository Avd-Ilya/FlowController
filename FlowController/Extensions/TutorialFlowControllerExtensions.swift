//
//  TutorialFlowControllerExtensions.swift
//  FlowController
//
//  Created by Avdeev Ilya Aleksandrovich on 07.05.2022.
//

import Foundation

extension TutorialFlowController: TutorialControllerDelegate {
    func tutorialControllerDidFinish(_ controller: TutorialController) {
        remove(childController: controller)
        delegate?.tutorialFlowControllerDidFinish(self)
    }
}
