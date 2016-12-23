//
//  ViewController.swift
//  AC3.2-Programmatic-Layout-Practice
//
//  Created by Louis Tur on 12/22/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.view.backgroundColor = .red
    
    // 1. Add Scroll View 
    self.view.addSubview(scrollView)
    
    // 2. Add Scroll Constraints

    let _ = [
    scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8),
    scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
    scrollView.topAnchor.constraint(equalTo: view.topAnchor, constant: 8),
    scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -8)
    ].map { $0.isActive = true}
    
    // 3. Add View 
    scrollView.addSubview(redView)
    
    self.edgesForExtendedLayout = []
    // 4. Add View Contraints
    let _ = [
        redView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 2.0),
        redView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 2.0),
        redView.topAnchor.constraint(equalTo: scrollView.topAnchor),
        redView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
        redView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
        redView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor)
        ].map { $0.isActive = true}
    
    // 5. Make it scroll
    
  }

  lazy var scrollView: UIScrollView = {
    let view: UIScrollView = UIScrollView()
    view.backgroundColor = .green
    view.showsVerticalScrollIndicator = true
    view.showsHorizontalScrollIndicator = true
    view.alwaysBounceHorizontal = true
    view.alwaysBounceVertical = true
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()
  
  lazy var redView: UIView = {
    let view: UIView = UIView()
    view.backgroundColor = .blue
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()

}

