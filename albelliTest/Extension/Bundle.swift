//
//  Bundle.swift
//  albelliTest
//
//  Created by Arash Z.Jahangiri on 1/25/20.
//  Copyright © 2020 albelli BV. All rights reserved.
//

import Foundation

extension Bundle {
    public func load<T>(_ nibName: String = String(describing: T.self), owner: Any? = nil) -> T {
        return loadNibNamed(nibName, owner: owner, options: nil)?.first as! T
    }
}
