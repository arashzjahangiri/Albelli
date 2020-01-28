//
//  MainInteractor.swift
//  albelliTest
//
//  Created by Arash Z.Jahangiri on 1/25/20.
//  Copyright (c) 2020 albelli BV. All rights reserved.

import UIKit

class MainInteractor: Interactor {
    // MARK: - Properties
    var presenter: MainPresenterProtocol!
    var router: MainRouterProtocol!
    var photoLibraryManager: PHPhotoLibraryManagerProtocol!
    
    // MARK: - Methods
    init(photoLibraryManager: PHPhotoLibraryManagerProtocol) {
        self.photoLibraryManager = photoLibraryManager
    }
    
    private func getAllPhotos() {
        photoLibraryManager.grantPermission { [weak self] (grant) in
            if grant {
                self?.photoLibraryManager.fetchPhotos(completion: { (photos) in
                    self?.presenter.present(photos: photos)
                })
            } else {
                self?.presenter.hideActivityIndicator()
                let error = MediaError.accessDenied
                self?.presenter.present(error: error)
            }
        }
    }
}

extension MainInteractor: MainInteractorProtocol {
    func viewDidLoad() {
        
    }
    
    func fetchPhotos() {
        getAllPhotos()
    }
}
