//
//  ViewController.swift
//  CW_OlaAdediji
//
//  Created by Ola on 09/12/2018.
//  Copyright © 2018 Ola. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
 //Changes
    
    @IBOutlet weak var cloud: UIImageView!
    @IBOutlet weak var cloud2: UIImageView!
    @IBOutlet weak var Road: UIImageView!
    @IBOutlet weak var tree: UIImageView!
    
    //@IBOutlet weak var cloud1: UIImageView!
    //@IBOutlet weak var cloud2: UIImageView!
    
    override func viewDidLoad(){
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
           //Animation for road
        var imageArray: [UIImage]
        imageArray = [UIImage(named: "road1.png")!,
                      UIImage(named: "road2.png")!,
                      UIImage(named: "road3.png")!,
                      UIImage(named: "road4.png")!,
                      UIImage(named: "road5.png")!,
                      UIImage(named: "road5.png")!,
                      UIImage(named: "road6.png")!,
                      UIImage(named: "road7.png")!,
                      UIImage(named: "road8.png")!,
                      UIImage(named: "road9.png")!,
                      UIImage(named: "road10.png")!,
                      UIImage(named: "road11.png")!,
                      UIImage(named: "road12.png")!,
                      UIImage(named: "road13.png")!,
                      UIImage(named: "road14.png")!,
                      UIImage(named: "road15.png")!,
                      UIImage(named: "road16.png")!,
                      UIImage(named: "road17.png")!,
                      UIImage(named: "road18.png")!,
                      UIImage(named: "road19.png")!]
                     //UIImage(named: "tree1.png")!]
        
        Road.image = UIImage.animatedImage(with: imageArray, duration: 0.4)
        //tree.image = UIImage.animatedImage(with: imageArray, duration: 0.6)
        
            //imageArray = [UIImage(named: "Tree1.png")]

        
    
    
        
        UIView.animate(withDuration: 2.5, delay: 0, options:
            [UIView.AnimationOptions.repeat, .curveLinear], animations:
            {
                self.cloud.center.x -= self.view.bounds.width
                self.cloud2.center.x -= self.view.bounds.width
                self.tree.center.x -= self.view.bounds.width

        }, completion: nil
        )
        
        
    }
    
    
    

    
    
    

}

