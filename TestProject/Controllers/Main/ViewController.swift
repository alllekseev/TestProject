//
//  ViewController.swift
//  TestProject
//
//  Created by Олег Алексеев on 31.08.2023.
//

import UIKit

final class ViewController: TPBaseController {

    private let mainView = MainView()

    private var changedViewControllerColor: Bool = false

    override func viewDidLoad() {
        super.viewDidLoad()
        mainView.delegate = self
    }
}

extension ViewController {
    override func setupViews() {
        view.setupView(mainView)
    }

    override func configureLayout() {
        super.configureLayout()
        NSLayoutConstraint.activate([
            mainView.topAnchor.constraint(equalTo: view.topAnchor),
            mainView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            mainView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            mainView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        ])
    }
}

extension ViewController: MainViewDelegate {
    func navigateTapped(_ vc: UIViewController) {
        navigationController?.pushViewController(vc, animated: true)
    }

    func tappedChangeColor(with color: UIColor) {
        changedViewControllerColor.toggle()
        changedViewControllerColor ?
        (mainView.backgroundColor = color) :
        (mainView.backgroundColor = .white)
    }
}
