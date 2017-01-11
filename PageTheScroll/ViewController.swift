//
//  ViewController.swift
//  PageTheScroll
//
//  Created by Tiago Henrique on 1/11/17.
//  Copyright © 2017 Tiago Henrique. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var scroll: UIScrollView!
    var images = [UIImageView]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        var contentWidth: CGFloat = 0.0
        
        for x in 0...2{
            let image =  UIImage(named: "icon\(x).png")
            let imageView = UIImageView(image: image)
            images.append(imageView)
            
            var newX: CGFloat = 0.0
            
            newX = scroll.frame.size.width / 2 + scroll.frame.size.width * CGFloat(x)
            
            contentWidth += newX
            
            scroll.addSubview(imageView)
            
            imageView.frame = CGRect(x: newX - 75, y: (view.frame.size.height/2)-75, width: 150, height: 150)
        }
        
        scroll.clipsToBounds = false
        scroll.contentSize = CGSize(width: contentWidth, height: view.frame.size.height)
    }


}

