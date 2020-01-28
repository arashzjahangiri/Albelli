//
//  Protocols.swift
//  albelliTest
//
//  Created by Arash Z.Jahangiri on 01/25/2020.
//  Copyright © 2020 albelliTest. All rights reserved.
//

import Foundation
import UIKit

public protocol InteractorProtocol: class {
    func viewDidLoad()
    func viewWillAppear(_ animated: Bool)
    func viewDidAppear(_ animated: Bool)
    func viewWillDisappear(_ animated: Bool)
    func viewDidDisappear(_ animated: Bool)
}

public protocol PresenterProtocol: class {
    func handle(error: Error?, dismiss: (() -> Void)?)
}

//sourcery: AutoMockable
public protocol ViewControllerProtocol: class {
    var viewController: UIViewController! { get }
}

public extension ViewControllerProtocol where Self: UIViewController {
    var viewController: UIViewController! {
        return self
    }
}

public protocol RouterProtocol: class {
}

public extension InteractorProtocol {
    func viewDidLoad() {}
    func viewWillAppear(_ animated: Bool) {}
    func viewDidAppear(_ animated: Bool) {}
    func viewWillDisappear(_ animated: Bool) {}
    func viewDidDisappear(_ animated: Bool) {}
}

public extension PresenterProtocol {
    func handle(error: Error?, dismiss: (() -> Void)?) {}
}
