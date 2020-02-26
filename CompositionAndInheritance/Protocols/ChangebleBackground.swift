//
//  ChangebleBackground.swift
//  CompositionAndInheritance
//
//  Created by Alexander Nikolaychuk on 26.02.2020.
//  Copyright © 2020 Alexander Nikolaychuk. All rights reserved.
//

import UIKit

protocol ChangebleBackground: UIViewController {
    
    func turnBackgroundToDark()
    
    func turnBackgroundToLight()
    
}

extension ChangebleBackground {
    
    func turnBackgroundToDark() {
        self.view.backgroundColor = UIColor.gray
    }
    
    func turnBackgroundToLight() {
        self.view.backgroundColor = UIColor.white
    }
    
}
