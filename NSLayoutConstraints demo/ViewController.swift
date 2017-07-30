//
//  ViewController.swift
//  NSLayoutConstraints demo
//
//  Created by Damian Markowski on 30.07.2017.
//  Copyright © 2017 Damian Markowski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var mainContainer: UIView!
    var childView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpMainContainer()
        setUpChildView()
        buildLayout()
    }
    
    fileprivate func setUpMainContainer(){
        mainContainer = UIView()
        mainContainer.backgroundColor = UIColor.blue
        mainContainer.frame = CGRect(x: 10, y: 20, width: 300, height: 300)
    }
    
    fileprivate func setUpChildView(){
        childView = UIView()
        childView.translatesAutoresizingMaskIntoConstraints = false
        childView.backgroundColor = UIColor.cyan
        childView.addConstraints(createConstraintsForChildView())
    }
    
    fileprivate func createConstraintsForChildView() -> [NSLayoutConstraint] {
        let width = NSLayoutConstraint(item: childView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 0, constant: 150)
        let height = NSLayoutConstraint(item: childView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 0, constant: 100)
        return [width, height]
    }
    
    fileprivate func createConstraintsForMainContainer() -> [NSLayoutConstraint] {
        let horizontal = NSLayoutConstraint(item: mainContainer, attribute: .leading, relatedBy: .equal, toItem: childView, attribute: .leading, multiplier: 1, constant: 0)
        let vertical = NSLayoutConstraint(item: mainContainer, attribute: .top, relatedBy: .equal, toItem: childView, attribute: .top, multiplier: 1, constant: 0)
        return [horizontal,vertical]
    }
    
    fileprivate func buildLayout(){
        self.view.addSubview(mainContainer)
        mainContainer.addSubview(childView)
        mainContainer.addConstraints(createConstraintsForMainContainer())
    }
}

