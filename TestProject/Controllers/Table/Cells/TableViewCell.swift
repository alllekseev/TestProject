//
//  TableViewCell.swift
//  TestProject
//
//  Created by Олег Алексеев on 04.09.2023.
//

import UIKit

final class TableViewCell: UITableViewCell {

    static let reuseIdentifier = "CustomTableViewCell"

    private let label1: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 20)
        return label
    }()

    private let label2: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 18)
        label.textColor = .lightGray
        return label
    }()

    private let label3: UILabel = {
        let label = UILabel()
        label.font = .italicSystemFont(ofSize: 16)
        return label
    }()

    private let circleView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 32
        view.backgroundColor = .systemMint
        return view
    }()

    private let labelsStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .leading
        stackView.distribution = .equalSpacing
        stackView.spacing = 8
        return stackView
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configureView()
        configureLayout()
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func configureCell(label1: String, label2: String, label3: String) {
        self.label1.text = label1
        self.label2.text = label2
        self.label3.text = label3
    }

}

private extension TableViewCell {
    func configureView() {
        setupView(circleView)

        labelsStackView.addArrangedSubview(label1)
        labelsStackView.addArrangedSubview(label2)
        labelsStackView.addArrangedSubview(label3)

        setupView(labelsStackView)
    }

    func configureLayout() {
        NSLayoutConstraint.activate([
            circleView.topAnchor.constraint(equalTo: topAnchor, constant: 8),
            circleView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8),
            circleView.trailingAnchor.constraint(equalTo: labelsStackView.leadingAnchor, constant: -16),
            circleView.widthAnchor.constraint(equalToConstant: 64),
            circleView.heightAnchor.constraint(equalToConstant: 64),

            labelsStackView.topAnchor.constraint(equalTo: topAnchor, constant: 8),
            labelsStackView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8),
            labelsStackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
        ])
    }
}
