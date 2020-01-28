//
//  MainViewControllerTests.swift
//  albelliTestTests
//
//  Created by Arash Z.Jahangiri on 1/25/20.
//  Copyright © 2020 albelli BV. All rights reserved.
//

import XCTest
@testable import albelliTest
import SwiftyMocky

class MainViewControllerTests: XCTestCase {
    
    var mainViewController: MainViewController!
    var interactorMock: MainInteractorProtocolMock!
    
    override func setUp() {
        mainViewController = MainViewController()
        interactorMock = MainInteractorProtocolMock()
        mainViewController.mainInteractor = interactorMock
    }
    
    override func tearDown() {
        mainViewController = nil
        interactorMock = nil
    }
    
    func testShowPhotos() {
        
        // Given
        let photoItem1 = PhotoItem(image: UIImage(), identifier: "id1")
        let photoItem2 = PhotoItem(image: UIImage(), identifier: "id2")
        let photosArray = [photoItem1, photoItem2]
        
        // When
        mainViewController.show(photos: photosArray)
        
        // Then
        XCTAssertNotNil(mainViewController.photos)
    }
    
    func testHideActivityIndicator() {
        
        // Given
        let expectation = self.expectation(description: "waiting")
        
        // When
        mainViewController.hideActivityIndicator()
        
        // Then
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0, execute: {
            expectation.fulfill()
        })
        waitForExpectations(timeout: 2, handler: nil)
        for view in mainViewController.view.subviews {
            if view.isKind(of: UIActivityIndicatorView.self) {
                XCTAssertTrue(view.isHidden)
            }
        }
    }
    
    func testShowError() {
        
        // Given
        let expectation = self.expectation(description: "waiting")
        
        // When
        mainViewController.show(error: "fake error")
        
        // Then
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0, execute: {
            expectation.fulfill()
        })
        waitForExpectations(timeout: 2, handler: nil)
        for view in mainViewController.view.subviews {
            if view.isKind(of: UIAlertController.self) {
                XCTAssertFalse(view.isHidden)
                expectation.fulfill()
            }
        }
    }
    
    func testCollectionViewDidSelectForFirstItem() {
        
        // Given
        let photoItem1 = PhotoItem(image: UIImage(), identifier: "id1")
        let photoItem2 = PhotoItem(image: UIImage(), identifier: "id2")
        let photosArray = [photoItem1, photoItem2]
        let mainView = mainViewController.view as! MainView
        mainViewController.show(photos: photosArray)
        let indexPath = IndexPath(row: 0, section: 0)

        // When
        mainView.collectionView.delegate?.collectionView?(mainView.collectionView, didSelectItemAt: indexPath)
        
        // Then
        XCTAssertNotNil(interactorMock)
        XCTAssertNotNil(mainViewController.view)
        XCTAssertNotNil(mainView.collectionView)
        XCTAssertNotNil(mainView.collectionView.delegate)
        XCTAssertNotNil(mainView.collectionView.dataSource)
    }
}
