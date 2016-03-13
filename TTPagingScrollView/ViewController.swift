//
//  ViewController.swift
//  TTPagingScrollView
//
//  Created by tanson on 16/3/13.
//  Copyright © 2016年 tanson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor.lightGrayColor()
        self.test()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func randonColor() -> UIColor {
        
        let randomR:CGFloat = CGFloat(drand48())
        let randomG:CGFloat = CGFloat(drand48())
        let randomB:CGFloat = CGFloat(drand48())
        
        return UIColor(red: randomR, green: randomG, blue: randomB, alpha: 1.0)
    }

    func test(){
        var frame = self.view.bounds
        frame.size.height = 200
        frame.origin.y = 100
        
        let view = TTPagingScrollView(frame: frame)
        self.view.addSubview(view)
        
        view.config(viewSpace: 5.0, edgesForExtended: 50, pageNumber: 10) { (containerView, index, frame) -> Void in
            let view = UIView(frame: frame)
            view.backgroundColor = self.randonColor()
            view.layer.cornerRadius = 10
            containerView.addSubview(view)
        }
        view.scrollToPage(1)
    }
}

