//
//  SecondViewController.swift
//  TestProject
//
//  Created by Олег Алексеев on 31.08.2023.
//

import UIKit

final class SecondViewController: TPBaseController {

    private let secondView = SecondView()
    
//    private let view1: UIView = {
//        let view = UIView()
//        view.backgroundColor = .yellow
//        return view
//    }()
//
//    private let view2: UIView = {
//        let view = UIView()
//        view.backgroundColor = .blue
//        return view
//    }()
//
//    private let view3: UIView = {
//        let view = UIView()
//        view.backgroundColor = .red
//        return view
//    }()
//
//    private let view4: UIView = {
//        let view = UIView()
//        view.backgroundColor = .orange
//        return view
//    }()
//
//    private let view5: UIView = {
//        let view = UIView()
//        view.backgroundColor = .gray
//        return view
//    }()
//
//    private let view6: UIView = {
//        let view = UIView()
//        view.backgroundColor = .black
//        return view
//    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Next View Controller"
    }
}

extension SecondViewController {
    override func setupViews() {
        super.setupViews()
        
        view.setupView(secondView)
    }

    override func configureLayout() {
        super.configureLayout()

        NSLayoutConstraint.activate([
            secondView.topAnchor.constraint(equalTo: view.topAnchor),
            secondView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            secondView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            secondView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        ])
    }
}

//private extension SecondViewController {
//    func setupViews() {
//        let views = [view1, view2, view3, view4, view5, view6]
//
//        views.forEach { view.setupView($0) }
//    }
//
//    func configureConstrains() {
//        NSLayoutConstraint.activate([
//            view1.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
//            view1.trailingAnchor.constraint(equalTo: view.centerXAnchor, constant: -5),
//            view1.heightAnchor.constraint(equalToConstant: view.frame.size.width/3),
//            view1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
//
//            view2.topAnchor.constraint(equalTo: view1.topAnchor),
//            view2.widthAnchor.constraint(equalTo: view1.widthAnchor),
//            view2.heightAnchor.constraint(equalTo: view1.heightAnchor),
//            view2.leadingAnchor.constraint(equalTo: view1.trailingAnchor, constant: 5),
//
//            view3.topAnchor.constraint(equalTo: view1.bottomAnchor, constant: 10),
//            view3.widthAnchor.constraint(equalTo: view1.widthAnchor),
//            view3.heightAnchor.constraint(equalTo: view1.heightAnchor),
//            view3.leadingAnchor.constraint(equalTo: view1.leadingAnchor),
//
//            view4.topAnchor.constraint(equalTo: view3.topAnchor),
//            view4.widthAnchor.constraint(equalTo: view1.widthAnchor),
//            view4.heightAnchor.constraint(equalTo: view1.heightAnchor),
//            view4.leadingAnchor.constraint(equalTo: view3.trailingAnchor, constant: 5),
//
//            view5.topAnchor.constraint(equalTo: view3.bottomAnchor, constant: 10),
//            view5.widthAnchor.constraint(equalTo: view1.widthAnchor),
//            view5.heightAnchor.constraint(equalTo: view1.heightAnchor),
//            view5.leadingAnchor.constraint(equalTo: view1.leadingAnchor),
//
//            view6.topAnchor.constraint(equalTo: view5.topAnchor),
//            view6.widthAnchor.constraint(equalTo: view1.widthAnchor),
//            view6.heightAnchor.constraint(equalTo: view1.heightAnchor),
//            view6.leadingAnchor.constraint(equalTo: view5.trailingAnchor, constant: 5),
//        ])
//    }
//}
