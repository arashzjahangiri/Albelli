//
//  MainInteractorTests.swift
//  albelliTestTests
//
//  Created by Arash Z.Jahangiri on 1/25/20.
//  Copyright © 2020 albelli BV. All rights reserved.
//

import XCTest
@testable import albelliTest
import SwiftyMocky

class MainInteractorTests: XCTestCase {

    var interactor: MainInteractor!
    var presenterMock: MainPresenterProtocolMock!
    var photoLibraryManagerMock: PHPhotoLibraryManagerProtocolMock!
    
    override func setUp() {
        photoLibraryManagerMock = PHPhotoLibraryManagerProtocolMock()
        interactor = MainInteractor(photoLibraryManager: photoLibraryManagerMock)
        presenterMock = MainPresenterProtocolMock()
        interactor.presenter = presenterMock
    }

    override func tearDown() {
        interactor = nil
        presenterMock = nil
    }
    
    func testFetchPhotosAccessGranted() {
        // Given
        Perform(photoLibraryManagerMock, .grantPermission(completion: .any, perform: { (completion) in
            completion(true)
        }))
        let photoItem1 = PhotoItem(image: UIImage(), identifier: "id1")
        let photoItem2 = PhotoItem(image: UIImage(), identifier: "id2")
        let photosArray = [photoItem1, photoItem2]
        Perform(photoLibraryManagerMock, .fetchPhotos(completion: .any, perform: { (completion) in
            completion(photosArray)
        }))
        // When
        interactor.fetchPhotos()
        // Then
        Verify(presenterMock, .present(photos: .any))
    }
    
    func testFetchPhotosAccessDenied() {
        // Given
        Perform(photoLibraryManagerMock, .grantPermission(completion: .any, perform: { (completion) in
            completion(false)
        }))
        // When
        interactor.fetchPhotos()
        // Then
        Verify(presenterMock, .hideActivityIndicator())
        Verify(presenterMock, .present(error: .any))
    }
}
