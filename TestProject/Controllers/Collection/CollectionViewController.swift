//
//  CollectionViewController.swift
//  TestProject
//
//  Created by Олег Алексеев on 04.09.2023.
//

import UIKit

final class CollectionViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()


        self.collectionView.register(CollectionViewCell.self, forCellWithReuseIdentifier: CollectionViewCell.reuseIdentifier)
        collectionView.delegate = self
    }

    // MARK: UICollectionViewDataSource


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 6
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionViewCell.reuseIdentifier, for: indexPath) as? CollectionViewCell else { return UICollectionViewCell() }
    
        cell.configure(image: UIImage(systemName: "person.fill") ?? UIImage())
        cell.imageClick = { [weak self] image in
            self?.navigationController?.pushViewController(ImageViewController(image: image), animated: true)
        }
    
        return cell
    }

}

extension CollectionViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (view.frame.size.width / 2) - 10, height: view.frame.size.width / 2 - 10)
    }
}

extension CollectionViewController {
//    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        navigationController?.pushViewController(ImageViewController(), animated: true)
//    }
}
