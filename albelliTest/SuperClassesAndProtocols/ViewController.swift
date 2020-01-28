//
//  ViewController.swift
//  albelliTest
//
//  Created by Arash Z.Jahangiri on 01/25/2020.
//  Copyright © 2020 albelliTest. All rights reserved.
//

import Foundation
import UIKit

open class ViewController: UIViewController {
    // MARK: - Properties
    public var interactor: InteractorProtocol!
    
    struct Texts {
        struct FatalError {
            static let interactor = "Interactor must not be nil!"
        }
    }
    
    // MARK: - Methods
    override public init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    open override func loadView() {
        super.loadView()
    }
    
    // MARK: - ViewController life cycle
    open override func viewDidLoad() {
        guard interactor != nil else {
            fatalError(Texts.FatalError.interactor)
        }
        super.viewDidLoad()
        interactor.viewDidLoad()
    }
    
    open override func viewWillAppear(_ animated: Bool) {
        guard interactor != nil else {
            fatalError(Texts.FatalError.interactor)
        }
        super.viewWillAppear(animated)
        interactor.viewWillAppear(animated)
    }

    open override func viewDidAppear(_ animated: Bool) {
        guard interactor != nil else {
            fatalError(Texts.FatalError.interactor)
        }
        super.viewDidAppear(animated)
        interactor.viewDidAppear(animated)
    }

    open override func viewWillDisappear(_ animated: Bool) {
        guard interactor != nil else {
            fatalError(Texts.FatalError.interactor)
        }
        super.viewWillDisappear(animated)
        interactor.viewWillDisappear(animated)
    }

    open override func viewDidDisappear(_ animated: Bool) {
        guard interactor != nil else {
            fatalError(Texts.FatalError.interactor)
        }
        super.viewDidDisappear(animated)
        interactor.viewDidDisappear(animated)
    }
}
