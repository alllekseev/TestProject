//
//  UIView+.swift
//  TestProject
//
//  Created by Олег Алексеев on 31.08.2023.
//

import UIKit

extension UIView {
    func setupView(_ view: UIView) {
        view.translatesAutoresizingMaskIntoConstraints = false
        addSubview(view)
    }

    func debugOutline(color: UIColor = .red) {
        layer.borderWidth = 1
        layer.borderColor = color.cgColor
    }
}
