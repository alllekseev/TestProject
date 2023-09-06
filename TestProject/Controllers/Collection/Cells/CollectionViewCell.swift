//
//  CollectionViewCell.swift
//  TestProject
//
//  Created by Олег Алексеев on 04.09.2023.
//

import UIKit

final class CollectionViewCell: UICollectionViewCell {
    static let reuseIdentifier = "CustomCollectionCell"

    private let imageView: UIImageView = {
        let view = UIImageView()
        view.layer.cornerRadius = 16
        return view
    }()

    var imageClick: ((UIImage) -> Void)?

    override init(frame: CGRect) {
        super.init(frame: .zero)
        configureView()
        configureLayout()

        let recognizer = UITapGestureRecognizer(
            target: self,
            action: #selector(gestureImage)
        )
        addGestureRecognizer(recognizer)
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func configure(image: UIImage) {
        imageView.image = image
    }
}

private extension CollectionViewCell {

    func configureView() {
        setupView(imageView)
    }

    func configureLayout() {
        NSLayoutConstraint.activate([
//            imageView.widthAnchor.constraint(equalToConstant: 150),
//            imageView.heightAnchor.constraint(equalToConstant: 75),
            imageView.topAnchor.constraint(equalTo: topAnchor, constant: 8),
            imageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8),
            imageView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8),
            imageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8),
        ])
    }

    @objc func gestureImage() {
        imageClick?(imageView.image ?? UIImage())
    }
}
