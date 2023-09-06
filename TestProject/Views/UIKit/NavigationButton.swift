//
//  NavigationButton.swift
//  TestProject
//
//  Created by Олег Алексеев on 04.09.2023.
//

import UIKit

final class NavigationButton: UIButton {
    private var navigateClosure: () -> Void

    init(title: String, navigateTo: @escaping () -> Void) {
        navigateClosure = navigateTo
        super.init(frame: .zero)
        configure(title: title)
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func configure(title: String) {
        backgroundColor = .systemBlue
        layer.cornerRadius = 16
        titleLabel?.font = .systemFont(ofSize: 20)
        setTitle(title, for: .normal)
        setTitleColor(.white, for: .normal)

        heightAnchor.constraint(equalToConstant: 54).isActive = true
        leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true

        addTarget(self, action: #selector(navigate), for: .touchUpInside)
    }

    @objc private func navigate() {
        navigateClosure()
    }
}
