//
//  MainProtocols.swift
//  albelliTest
//
//  Created by Arash Z.Jahangiri on 1/25/20.
//  Copyright (c) 2020 albelli BV. All rights reserved.

import UIKit
import Photos

public struct PhotoItem {
    var image: UIImage
    var identifier: String
}

enum MediaError: Error {
    case accessDenied
}

//sourcery: AutoMockable
protocol MainInteractorProtocol: InteractorProtocol {
    func fetchPhotos()
}

//sourcery: AutoMockable
protocol MainPresenterProtocol: PresenterProtocol {
    func present(photos: [PhotoItem])
    func hideActivityIndicator()
    func present(error: MediaError)
}

//sourcery: AutoMockable
protocol MainViewControllerProtocol: ViewControllerProtocol {
    func show(photos: [PhotoItem])
    func hideActivityIndicator()
    func show(error: String)
}

protocol MainRouterProtocol: RouterProtocol {

}
