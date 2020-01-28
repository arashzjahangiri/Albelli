//
//  MainPresenter.swift
//  albelliTest
//
//  Created by Arash Z.Jahangiri on 1/25/20.
//  Copyright (c) 2020 albelli BV. All rights reserved.

import UIKit
import Photos

class MainPresenter: Presenter {
    // MARK: - Properties
    weak var viewController: MainViewControllerProtocol!
    
    // MARK: - Methods
    
}

extension MainPresenter: MainPresenterProtocol {
    
    func present(photos: [PhotoItem]) {
        viewController.show(photos: photos)
    }
    
    func hideActivityIndicator() {
        viewController.hideActivityIndicator()
    }
    
    func present(error: MediaError) {
        switch error {
        case .accessDenied:
            let message = "You didn't allow Albelli to access to camera roll."
            viewController.show(error: message)
        }
    }
}
