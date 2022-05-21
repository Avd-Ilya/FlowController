//
//  TutorialController.swift
//  FlowController
//
//  Created by Avdeev Ilya Aleksandrovich on 06.05.2022.
//

import UIKit

public class TutorialController: UIViewController {

    public var didFinish: (() -> Void)?
    
    let goToCabinetButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), for: .normal)
        button.setTitle("Перейти в кабинет", for: .normal)
        button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        
        return button
    }()
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        print("TutorialController")

        view.backgroundColor = #colorLiteral(red: 0.7254902124, green: 0.4784313738, blue: 0.09803921729, alpha: 1)
        self.navigationItem.title = "Tutorial"
        
        self.view.addSubview(goToCabinetButton)

        goToCabinetButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        goToCabinetButton.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        goToCabinetButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
        goToCabinetButton.heightAnchor.constraint(equalToConstant: 50).isActive = true        
    }

    @objc func buttonPressed() {
        didFinish?()
        print("btn pressed")
    }
}
