//
//  CabinetFlowControllerExtensions.swift
//  FlowController
//
//  Created by Avdeev Ilya Aleksandrovich on 07.05.2022.
//

import Foundation

extension CabinetFlowController: LogoutControllerDelegate {
    func logoutControllerDidFinish(_ Controller: LogoutController) {
        remove(childController: Controller)
        delegate?.cabinetFlowControllerDidFinish(self)
    }
}

extension CabinetFlowController: LoginControllerDelegate {
    func loginControllerDidFinish(_ controller: LoginController) {
        remove(childController: controller)
        delegate?.cabinetFlowControllerDidFinish(self)
    }
}
