//
//  ViewController.swift
//  CompositionAndInheritance
//
//  Created by Alexander Nikolaychuk on 25.02.2020.
//  Copyright © 2020 Alexander Nikolaychuk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Loader
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
    
    //Background Change
    func turnBackgroundToDark() {
        self.view.backgroundColor = UIColor.gray
    }
    
    func turnBackgroundToLight() {
        self.view.backgroundColor = UIColor.white
    }

}
