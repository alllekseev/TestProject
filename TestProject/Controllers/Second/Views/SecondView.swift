//
//  SecondView.swift
//  TestProject
//
//  Created by Олег Алексеев on 06.09.2023.
//

import UIKit

final class SecondView: TPBaseView {
    private let colors: [UIColor] = [.red, .yellow, .gray, .cyan, .brown, .brown]

    private lazy var view = UIView()

    private lazy var views = Array(repeating: view, count: 6)
}

extension SecondView {
    override func setupViews() {
        super.setupViews()

        views.enumerated().forEach { (index, view) in
            view.backgroundColor = colors[index]
            setupView(view)
        }
    }

    override func configureLayout() {
        super.configureLayout()
        NSLayoutConstraint.activate([
            views[0].topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 10),
            views[0].trailingAnchor.constraint(equalTo: centerXAnchor, constant: -5),
            views[0].heightAnchor.constraint(equalToConstant: self.frame.size.width/3),
            views[0].leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),

            views[1].topAnchor.constraint(equalTo: views[0].topAnchor),
            views[1].widthAnchor.constraint(equalTo: views[0].widthAnchor),
            views[1].heightAnchor.constraint(equalTo: views[0].heightAnchor),
            views[1].leadingAnchor.constraint(equalTo: views[0].trailingAnchor, constant: 5),

            views[2].topAnchor.constraint(equalTo: views[0].bottomAnchor, constant: 10),
            views[2].widthAnchor.constraint(equalTo: views[0].widthAnchor),
            views[2].heightAnchor.constraint(equalTo: views[0].heightAnchor),
            views[2].leadingAnchor.constraint(equalTo: views[0].leadingAnchor),

            views[3].topAnchor.constraint(equalTo: views[2].topAnchor),
            views[3].widthAnchor.constraint(equalTo: views[0].widthAnchor),
            views[3].heightAnchor.constraint(equalTo: views[0].heightAnchor),
            views[3].leadingAnchor.constraint(equalTo: views[2].trailingAnchor, constant: 5),

            views[4].topAnchor.constraint(equalTo: views[2].bottomAnchor, constant: 10),
            views[4].widthAnchor.constraint(equalTo: views[0].widthAnchor),
            views[4].heightAnchor.constraint(equalTo: views[0].heightAnchor),
            views[4].leadingAnchor.constraint(equalTo: views[0].leadingAnchor),

            views[5].topAnchor.constraint(equalTo: views[4].topAnchor),
            views[5].widthAnchor.constraint(equalTo: views[0].widthAnchor),
            views[5].heightAnchor.constraint(equalTo: views[0].heightAnchor),
            views[5].leadingAnchor.constraint(equalTo: views[4].trailingAnchor, constant: 5),
        ])
    }

    override func configureAppearance() {
        super.configureAppearance()
        backgroundColor = .systemGreen
    }
}
