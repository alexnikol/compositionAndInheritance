//
//  Loaderable.swift
//  CompositionAndInheritance
//
//  Created by Alexander Nikolaychuk on 25.02.2020.
//  Copyright © 2020 Alexander Nikolaychuk. All rights reserved.
//

import UIKit

protocol Loaderable: UIViewController {
    
    func setupLoader()
    
    func runLoader()
    
    func stopLoader()
    
}

extension Loaderable {
    
    private var loader: UIActivityIndicatorView? {
        return (view.viewWithTag(100) as? UIActivityIndicatorView)
    }
    
    func setupLoader() {
        let activityViewController = UIActivityIndicatorView(frame: self.view.bounds)
        activityViewController.tag = 100
        self.view.addSubview(activityViewController)
    }
    
    func runLoader() {
        loader?.startAnimating()
    }
    
    func stopLoader() {
        loader?.stopAnimating()
    }
    
}
