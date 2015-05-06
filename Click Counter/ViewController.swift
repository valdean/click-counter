//
//  ViewController.swift
//  Click Counter
//
//  Created by Val Klump on 5/6/15.
//  Copyright (c) 2015 Val Klump. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count:Int = 50
    
    var label:UILabel!

    var bgColor = UIColor.orangeColor()
    var alpha:CGFloat!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Background color
        changeBGColor()
        
        // Label
        var label = UILabel()
        label.frame = CGRectMake(150, 150, 60, 60)
        label.text = "\(count)"
        
        self.view.addSubview(label)
        self.label = label
        
        // Increment Button
        var addButton = UIButton()
        addButton.frame = CGRectMake(150, 250, 200, 60)
        addButton.setTitle("Tap to Add", forState: .Normal)
        addButton.contentHorizontalAlignment = UIControlContentHorizontalAlignment.Left
        addButton.setTitleColor(UIColor.blueColor(), forState: .Normal)
        addButton.setTitleColor(UIColor.redColor(), forState: .Highlighted)
        self.view.addSubview(addButton)
    
        addButton.addTarget(self, action: "incrementCount", forControlEvents: UIControlEvents.TouchUpInside)
        
        // Decrement Button
        var decButton = UIButton()
        decButton.frame = CGRectMake(150, 350, 200, 60)
        decButton.setTitle("Tap to Subtract", forState: .Normal)
        decButton.contentHorizontalAlignment = UIControlContentHorizontalAlignment.Left
        decButton.setTitleColor(UIColor.blueColor(), forState: .Normal)
        decButton.setTitleColor(UIColor.redColor(), forState: .Highlighted)
        self.view.addSubview(decButton)
        
        decButton.addTarget(self, action: "decrementCount", forControlEvents: UIControlEvents.TouchUpInside)
        
    }

    func incrementCount() {
        self.count++
        changeBGColor()
        self.label.text = "\(self.count)"
        
    }
    
    func decrementCount() {
        self.count--
        changeBGColor()
        self.label.text = "\(self.count)"
    }
    
    func changeBGColor() {
        alpha = CGFloat(abs(count)) / 100
        bgColor = bgColor.colorWithAlphaComponent(alpha)
        self.view.backgroundColor = bgColor
    }

}

