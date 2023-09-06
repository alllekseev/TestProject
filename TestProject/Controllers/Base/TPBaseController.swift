//
//  TPBaseController.swift
//  TestProject
//
//  Created by Олег Алексеев on 05.09.2023.
//

import UIKit

class TPBaseController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        configureController()
    }
}

@objc extension TPBaseController {
    private func configureController() {
        setupViews()
        configureLayout()
        configureAppearance()
    }

    func setupViews() { }

    func configureLayout() { }

    func configureAppearance() { }
}
