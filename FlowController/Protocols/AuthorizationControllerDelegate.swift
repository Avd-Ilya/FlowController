//
//  AuthorizationControllerDelegate.swift
//  FlowController
//
//  Created by Avdeev Ilya Aleksandrovich on 07.05.2022.
//

import Foundation

protocol AuthorizationControllerDelegate: class {
    func authorizationControllerDidFinish(_ controller: AuthorizationController)
}
