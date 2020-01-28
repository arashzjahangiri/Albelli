//
//  MainConfigurator.swift
//  albelliTest
//
//  Created by Arash Z.Jahangiri on 1/25/20.
//  Copyright (c) 2020 albelli BV. All rights reserved.

import UIKit

class MainConfigurator: Configurator {
    // MARK: - Properties
    
    // MARK: - Methods
    class func build() -> (MainViewController, MainInteractor) {
        let viewController = MainViewController()
        let interactor = MainInteractor(photoLibraryManager: PHPhotoLibraryManager())
        let presenter = MainPresenter()
        let router = MainRouter()
        
        viewController.interactor = interactor
        
        interactor.presenter = presenter
        interactor.router = router
        
        presenter.viewController = viewController
        
        router.viewControllerProtocol = viewController
        
        return (viewController, interactor)
    }
}
