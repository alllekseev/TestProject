//
//  TPBaseView.swift
//  TestProject
//
//  Created by Олег Алексеев on 05.09.2023.
//

import UIKit

class TPBaseView: UIView {
    override init(frame: CGRect) {
        super.init(frame: .zero)
        configureView()
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

@objc extension TPBaseView {
    private func configureView() {
        setupViews()
        configureLayout()
        configureAppearance()
    }

    func setupViews() { }

    func configureLayout() { }

    func configureAppearance() {
        backgroundColor = Colors.mainBackground
    }
}
