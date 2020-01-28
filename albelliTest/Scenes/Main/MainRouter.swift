//
//  MainRouter.swift
//  albelliTest
//
//  Created by Arash Z.Jahangiri on 1/25/20.
//  Copyright (c) 2020 albelli BV. All rights reserved.

import UIKit

class MainRouter: Router {
    // MARK: - Properties
    weak var viewControllerProtocol: MainViewControllerProtocol!
    
    // MARK: - Methods
}

extension MainRouter: MainRouterProtocol {
}
