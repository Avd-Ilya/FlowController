//
//  LogoutControllerDelegate.swift
//  FlowController
//
//  Created by Avdeev Ilya Aleksandrovich on 07.05.2022.
//

import Foundation

protocol LogoutControllerDelegate: class {
    func logoutControllerDidFinish(_ Controller: LogoutController)
}
