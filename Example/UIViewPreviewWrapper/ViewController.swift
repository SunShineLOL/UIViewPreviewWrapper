//
//  ViewController.swift
//  UIViewPreviewWrapper
//
//  Created by 443623074@qq.comg on 03/14/2024.
//  Copyright (c) 2024 443623074@qq.comg. All rights reserved.
//

import UIKit
import SwiftUI
import UIViewPreviewWrapper
/// 演示
#Preview {
    UIViewControllerPreviewWrapper {
        let vc = ViewController()
        return vc
    }
}

class ViewController: UIViewController {
    lazy var currentView: UIView = {
        let view = UIView(frame: CGRect(origin: self.view.center, size: CGSize(width: 300, height: 300)))
        view.backgroundColor = .red
        view.layer.masksToBounds = true
        self.view.addSubview(view)
        view.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        view.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: -60).isActive = true
        view.translatesAutoresizingMaskIntoConstraints = false
        view.widthAnchor.constraint(equalToConstant: 300).isActive = true
        view.heightAnchor.constraint(equalToConstant: 300).isActive = true
        return view
    }()
    lazy var desLabel: UILabel = {
        var supOrigin = self.currentView.frame.origin
        supOrigin.y = self.currentView.frame.maxY + 20
        let view = UILabel(frame: CGRect(origin: supOrigin, size: CGSize(width: self.view.frame.width, height: 30)))
        view.numberOfLines = 0
        self.view.addSubview(view)
        //UILayoutConstraintAxis
        view.widthAnchor.constraint(equalTo: self.view.widthAnchor, constant: 20).isActive = true
        view.topAnchor.constraint(equalTo: self.currentView.bottomAnchor, constant: 20).isActive = true
        view.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        view.textAlignment = .center
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.desLabel.text = "点击屏幕更改卡片的颜色/形状"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        let randomColor = UIColor.random()
        currentView.backgroundColor = randomColor
        let cornerRadius = CGFloat(arc4random_uniform(150))
        currentView.layer.cornerRadius = cornerRadius
        
    }

}

extension UIColor {
    static func random() -> UIColor {
        let red = CGFloat(arc4random_uniform(256)) / 255.0
        let green = CGFloat(arc4random_uniform(256)) / 255.0
        let blue = CGFloat(arc4random_uniform(256)) / 255.0
        
        return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }
}


