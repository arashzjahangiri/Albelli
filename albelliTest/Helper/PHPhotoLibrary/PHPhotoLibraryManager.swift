//
//  PHPhotoLibraryManager.swift
//  albelliTest
//
//  Created by Arash Z.Jahangiri on 1/25/20.
//  Copyright © 2020 albelli BV. All rights reserved.
//

import Foundation
import Photos
import UIKit

//sourcery: AutoMockable
protocol PHPhotoLibraryManagerProtocol {
    typealias GrantPermissionCompletionHandler = ((_ status: Bool) -> Void)
    typealias PhotosCompletionHandler = ((_ photos: [PhotoItem]) -> Void )
    
    func grantPermission(completion: @escaping GrantPermissionCompletionHandler)
    func fetchPhotos(completion: @escaping PhotosCompletionHandler)
}

class PHPhotoLibraryManager {
    
    init() {}
    
    private func getPhotoItem(from items: PHFetchResult<PHAsset>) -> [PhotoItem] {
        var imagesArray = [PhotoItem]()
        for index in 0..<items.count {
            let image = getImageFrom(asset: items[index])
            let photoItem = PhotoItem(image: image, identifier: items[index].localIdentifier)
            imagesArray.append(photoItem)
        }
        
        return imagesArray
    }
    
    private func getImageFrom(asset: PHAsset) -> UIImage {
        let phImageManager = PHImageManager.default()
        let option = PHImageRequestOptions()
        var resultImage = UIImage()
        option.isSynchronous = true
        phImageManager.requestImage(for: asset, targetSize: PHImageManagerMaximumSize, contentMode: .aspectFit, options: option) { (image, info) in
            resultImage = image ?? UIImage()
        }
        return resultImage
    }
}

extension PHPhotoLibraryManager: PHPhotoLibraryManagerProtocol {
    
    func grantPermission(completion: @escaping GrantPermissionCompletionHandler) {
        PHPhotoLibrary.requestAuthorization { status in
            if status == .authorized {
                return completion(true)
            } else {
                return completion(false)
            }
        }
    }
    
    func fetchPhotos(completion: @escaping PhotosCompletionHandler) {
        let photos = PHAsset.fetchAssets(with: .image, options: PHFetchOptions())
        let photoItems = getPhotoItem(from: photos)
        completion(photoItems)
    }
}
