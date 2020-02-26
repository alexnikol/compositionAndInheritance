//
//  FirstViewController.swift
//  CompositionAndInheritance
//
//  Created by Alexander Nikolaychuk on 25.02.2020.
//  Copyright © 2020 Alexander Nikolaychuk. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, Loaderable, ChangebleBackground {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupLoader()
        runLoader()
        turnBackgroundToDark()
        DispatchQueue.main.asyncAfter(deadline: .now() + 4.0, execute: {
            self.stopLoader()
            self.turnBackgroundToLight()
        })
    }
    
}
