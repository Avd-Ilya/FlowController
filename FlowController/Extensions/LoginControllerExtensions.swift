//
//  LoginControllerExtensions.swift
//  FlowController
//
//  Created by Avdeev Ilya Aleksandrovich on 07.05.2022.
//

import Foundation

extension LoginController: AuthorizationControllerDelegate {
    func authorizationControllerDidFinish(_ controller: AuthorizationController) {
        navigationController?.dismiss(animated: true, completion: nil)
        //remove(childController: controller)
        delegate?.loginControllerDidFinish(self)
    }
}
