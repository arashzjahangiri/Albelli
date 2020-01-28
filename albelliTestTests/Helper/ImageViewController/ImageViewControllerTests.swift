//
//  ImageViewControllerTests.swift
//  albelliTestTests
//
//  Created by Arash Z.Jahangiri on 1/25/20.
//  Copyright © 2020 albelli BV. All rights reserved.
//

import XCTest
@testable import albelliTest
import SwiftyMocky
import WebKit

class ImageViewControllerTests: XCTestCase {

    var imageViewController: ImageViewController!
    
    override func setUp() {
        imageViewController = ImageViewController(imageId: "fakeImageID")
    }

    override func tearDown() {
        imageViewController = nil
    }
    
    func testViewDidLoad() {
        
        // Given
        let expectation = self.expectation(description: "waiting")
        
        // When
        imageViewController.viewDidLoad()
        
        // Then
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0, execute: {
            expectation.fulfill()
        })
        waitForExpectations(timeout: 2, handler: nil)
        for view in imageViewController.view.subviews {
            if view.isKind(of: WKWebView.self) {
                XCTAssertFalse(view.isHidden)
            }
        }
    }
    
    func testViewDidAppear() {
        
        // Given
        let expectation = self.expectation(description: "waiting")
        imageViewController.viewDidLoad()
        
        // When
        imageViewController.viewDidAppear(true)
        
        // Then
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0, execute: {
            expectation.fulfill()
        })
        waitForExpectations(timeout: 2, handler: nil)
        for view in imageViewController.view.subviews {
            if view.isKind(of: WKWebView.self) {
                XCTAssertFalse(view.isHidden)
            }
        }
    }
}
