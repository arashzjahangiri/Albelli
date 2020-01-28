//
//  MainInteractorPresenterTests.swift
//  albelliTestTests
//
//  Created by Arash Z.Jahangiri on 1/25/20.
//  Copyright © 2020 albelli BV. All rights reserved.
//

import XCTest
@testable import albelliTest
import SwiftyMocky

class MainInteractorPresenterTests: XCTestCase {

    var presenter: MainPresenter!
    var viewControllerMock: MainViewControllerProtocolMock!
    
    override func setUp() {
        presenter = MainPresenter()
        viewControllerMock = MainViewControllerProtocolMock()
        presenter.viewController = viewControllerMock
    }

    override func tearDown() {
        presenter = nil
        viewControllerMock = nil
    }
    
    func testPresentPhotos() {
        
        // Given
        let photoItem1 = PhotoItem(image: UIImage(), identifier: "id1")
        let photoItem2 = PhotoItem(image: UIImage(), identifier: "id2")
        let photosArray = [photoItem1, photoItem2]
        
        // When
        presenter.present(photos: photosArray)
        
        // Then
        Verify(viewControllerMock, .show(photos: .any))
    }
    
    func testHideActivityIndicator() {
        
        // Given
        
        // When
        presenter.hideActivityIndicator()
        
        // Then
        Verify(viewControllerMock, .hideActivityIndicator())
    }
    
    func testpresentError() {
        
        // Given
        let error = MediaError.accessDenied
        // When
        presenter.present(error: error)
        
        // Then
        Verify(viewControllerMock, .show(error: .any))
    }
}
