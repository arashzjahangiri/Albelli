//
//  MainView.swift
//  albelliTest
//
//  Created by Arash Z.Jahangiri on 1/25/20.
//  Copyright (c) 2020 albelli BV. All rights reserved.

import UIKit

class MainView: UIView {
    
    // MARK: - Properties
    weak var view: UIView?
    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    //MARK: Inits
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    // MARK: - Methods
    override func awakeFromNib() {
        super.awakeFromNib()
        
        setCollectionViewAttributes()
    }
    
    private func setCollectionViewAttributes() {
        /*
        collectionView = UICollectionView(
            frame: self.bounds,
            collectionViewLayout: {
                let layout = UICollectionViewFlowLayout()
                layout.minimumInteritemSpacing = 0
                layout.minimumLineSpacing = 0
                return layout
            }()
        )
         */
        collectionView.backgroundColor = .white
        //self.addSubview(collectionView)
    }
}
