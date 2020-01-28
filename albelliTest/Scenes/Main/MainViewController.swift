//
//  ViewController.swift
//  albelliTest
//
//  Created by Alex Yaroshyn on 08/01/2020.
//  Copyright © 2020 albelli BV. All rights reserved.
//

import UIKit

class MainViewController: ViewController {
    
    // MARK: - Properties
    var mainInteractor: MainInteractorProtocol! {
        get {
            return interactor as? MainInteractorProtocol
        }
        set {
            interactor = newValue
        }
    }
    private var mainView: MainView = Bundle.main.load()
    var photos = [PhotoItem]()
    
    // MARK: - Methods
    // MARK: UIViewController
    override func loadView() {
        view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainInteractor.fetchPhotos()
        showActivityIndicator()
        setupCollectionView()
    }
    
    fileprivate func showActivityIndicator() {
        mainView.activityIndicator.startAnimating()
    }
    
    fileprivate func setupCollectionView() {
        mainView.collectionView.register(CollectionViewImageCell.self, forCellWithReuseIdentifier: CollectionViewImageCell.identifier)
        mainView.collectionView.delegate = self
        mainView.collectionView.dataSource = self
    }
}

extension MainViewController: MainViewControllerProtocol {
    
    func show(photos: [PhotoItem]) {
        self.photos = photos
        DispatchQueue.main.async { [weak self] in
            self?.hideActivityIndicator()
            self?.mainView.collectionView.reloadData()
        }
    }
    
    func hideActivityIndicator() {
        DispatchQueue.main.async { [weak self] in
            self?.mainView.activityIndicator.stopAnimating()
            self?.mainView.activityIndicator.isHidden = true
        }
    }
    
    func show(error: String) {
        let alert = UIAlertController(title: "Access Denied", message: error.self, preferredStyle: .alert)

        alert.addAction(UIAlertAction(title: "Understood", style: .cancel, handler: nil))
        DispatchQueue.main.async { [weak self] in
            self?.present(alert, animated: true)
        }
    }
    
}

extension MainViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photos.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: CollectionViewImageCell.identifier,
            for: indexPath
        ) as! CollectionViewImageCell
        let photo = photos[indexPath.row]
        // TODO: pass in the image
        cell.image = photo.image
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.bounds.size.width / 2, height: view.bounds.size.width / 2)
    }
}

extension MainViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let photo = photos[indexPath.row]
        let identifier = photo.identifier
        // TODO: init with asset image id
        let imageViewController = ImageViewController(imageId: identifier)
        navigationController?.pushViewController(imageViewController, animated: true)
    }
}
