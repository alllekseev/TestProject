//
//  MainView.swift
//  TestProject
//
//  Created by Олег Алексеев on 05.09.2023.
//

import UIKit

protocol MainViewDelegate: AnyObject {
    func navigateTapped(_ vc: UIViewController)
    func tappedChangeColor(with color: UIColor)
}

final class MainView: TPBaseView {

    typealias buttonTitles = Strings.Main.Buttons

    weak var delegate: MainViewDelegate?

    //MARK: - Private Properties
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 20)
        label.textColor = .white
        label.backgroundColor = .systemBlue
        label.layer.cornerRadius = 24
        label.textAlignment = .center
        label.text = Strings.Main.title
        label.numberOfLines = 0
        label.layer.masksToBounds = true
        return label
    }()

    private let buttonsStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.alignment = .fill
        stackView.axis = .vertical
        stackView.spacing = 16
        return stackView
    }()

    //MARK: - Lazy properties
    lazy var navigateToSecondVC = NavigationButton(title: buttonTitles.navigationToNewScreen) {
        self.delegate?.navigateTapped(SecondViewController())
    }

    //TODO: - use changeVCColor
    lazy var changeColorButton = NavigationButton(title: buttonTitles.changeColor) {
        self.delegate?.tappedChangeColor(with: .yellow)
    }

    private lazy var navigateToTableButton = NavigationButton(title: buttonTitles.navigationToTable) {
        self.delegate?.navigateTapped(TableViewController())
    }

    private lazy var navigateToCollectionButton = NavigationButton(title:buttonTitles.navigationToCollection) {
        self.delegate?.navigateTapped(CollectionViewController(collectionViewLayout: UICollectionViewFlowLayout()))
    }
}

extension MainView {

    override func setupViews() {
        super.setupViews()

        setupView(titleLabel)

        buttonsStackView.addArrangedSubview(changeColorButton)
        buttonsStackView.addArrangedSubview(navigateToSecondVC)
        buttonsStackView.addArrangedSubview(navigateToTableButton)
        buttonsStackView.addArrangedSubview(navigateToCollectionButton)

        setupView(buttonsStackView)
    }

    override func configureLayout() {
        super.configureLayout()
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 24),
            titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),

            // TODO: - make width relative to parent
            titleLabel.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.7),
            titleLabel.heightAnchor.constraint(equalToConstant: 100),

            buttonsStackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            buttonsStackView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -54),
            buttonsStackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
        ])
    }
}
