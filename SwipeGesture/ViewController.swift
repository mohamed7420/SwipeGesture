//
//  ViewController.swift
//  SwipeGesture
//
//  Created by Mohamed on 8/21/19.
//  Copyright © 2019 Mohamed74. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        view.backgroundColor = .orange
        
        let swipeGesture = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipeGesture(sender:)))
        
        
        swipeGesture.direction = .right
        
        let leftSwipe = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipeGesture(sender:)))
        
        leftSwipe.direction = .left
        view.addGestureRecognizer(swipeGesture)
        view.addGestureRecognizer(leftSwipe)
        
    }

    
    
    @objc func handleSwipeGesture(sender: UISwipeGestureRecognizer){
        
        if sender.state == .ended {
            
            switch sender.direction {
            case .right :
                view.backgroundColor = .blue
            case .left:
                view.backgroundColor = .black
                
            default:
                view.backgroundColor = .orange
                break
            }
            
        }
        
        
    }

}

