//
//  ViewController.swift
//  CALayor
//
//  Created by admin on 11/11/20.
//  Copyright © 2020 Long. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(viewController)
        
    }
    // tao mot uiview len man hinh, quen
    let viewController: UIView = {
        let viewC = UIView()
//        viewC.frame = CGRect(x: 10, y: 10, width: 50, height: 50)
        viewC.center = CGPoint(x: 200, y: 200)
        viewC.bounds = CGRect(x: 0, y: 0, width: 200, height: 200)
        viewC.backgroundColor = .red
        viewC.alpha = 0.8
        return viewC
    }()
    
    /*
     viewDidLayoutSubviews: đã đc tích hợp addSubview, tao ra một thông báo là nó đã đc tạo ra một view phu.
     gọi nó thì sẽ gọi đc view
     */
    override func viewDidLayoutSubviews() {
        let viewC1: UIView = {
           let viewC1 = UIView()
            viewC1.backgroundColor = .yellow
            viewC1.frame = CGRect(x: 0, y: 0, width: 150, height: 150)
            viewC1.center = view.center
            //
            view.addSubview(viewC1)
            return viewC1
        }()
        
        let buttonView: UIButton = {
            let button = UIButton()
            button.backgroundColor = .black
            button.setTitleColor(.white, for: .normal)
            button.setTitle("nhan", for: .normal)
            button.sizeToFit()
            button.frame = CGRect(x: view.frame.size.width - 100, y: view.frame.size.height - 200, width: 200, height: 100)
            view.addSubview(button)
            return button
        }()
        
        buttonView.addTarget(self, action: #selector(animal), for: .touchUpInside)
        
    }
    // animation
    @objc func animal() {
        /*
         sử đụng uiView để gọi pt animation.
         */
        UIView.animate(withDuration: 1, animations: {
            self.viewController.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        })
    }
    
    
    

}

