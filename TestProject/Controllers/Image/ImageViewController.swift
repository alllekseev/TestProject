//
//  ImageViewController.swift
//  TestProject
//
//  Created by Олег Алексеев on 04.09.2023.
//

import UIKit

final class ImageViewController: TPBaseController {

    private let imageView =  UIImageView()

    init(image: UIImage) {
        super.init(nibName: nil, bundle: nil)
        imageView.image = image
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

extension ImageViewController {

    override func setupViews() {
        super.setupViews()

        view.setupView(imageView)
    }

    override func configureLayout() {
        super.configureLayout()
        
        NSLayoutConstraint.activate([
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            imageView.heightAnchor.constraint(equalToConstant: 200),
            imageView.widthAnchor.constraint(equalToConstant: 300),
        ])
    }

    override func configureAppearance() {
        super.configureAppearance()

        view.backgroundColor = .lightGray
    }
}
