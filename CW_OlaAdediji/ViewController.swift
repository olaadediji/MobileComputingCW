//
//  ViewController.swift
//  CW_OlaAdediji
//
//  Created by Ola on 09/12/2018.
//  Copyright © 2018 Ola. All rights reserved.
//

import UIKit

protocol subviewDelegate {
    func changeSomething()
}

class ViewController: UIViewController, subviewDelegate {
 //Changes
    
    @IBOutlet weak var cloud: UIImageView!
    @IBOutlet weak var cloud2: UIImageView!
    @IBOutlet weak var Road: UIImageView!
    @IBOutlet weak var tree: UIImageView!
    @IBOutlet weak var plane: PlaneDragView!
    
    var dynamicAnimator: UIDynamicAnimator!
    var dynamicItemBehavior: UIDynamicItemBehavior!
    
    //var birdView = UIImageView( image: nil)
    //birdView.image = UIImage(named: "bird1.png")
    //birdView.frame = CGRect(x:700, y: 100, width: 50, height: 45)
    //self.view.addSubview(birdView)
    
    // unused function
    func changeSomething() {
        
    }
    
   let width = UIScreen.main.bounds.width
   let Height = UIScreen.main.bounds.height
    
    override func viewDidLoad(){
        plane.myDelegate = self

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
                     // UIImage(named: "tree1.png")!]
        
        Road.image = UIImage.animatedImage(with: imageArray, duration: 0.5)
      
        ///////////////////////////////////////////////////////
        
        var treeImageArray: [UIImage]
        treeImageArray = [UIImage(named: "tree1.png")!,
                          UIImage(named: "tree2.png")!,
                          UIImage(named: "tree3.png")!,
                          UIImage(named: "tree4.png")!,
                          UIImage(named: "tree5.png")!,
                          UIImage(named: "tree5.png")!,
                          UIImage(named: "tree6.png")!,
                          UIImage(named: "tree7.png")!,
                          UIImage(named: "tree8.png")!,
                          UIImage(named: "tree9.png")!,
                          UIImage(named: "tree10.png")!]
        
        tree.image = UIImage.animatedImage(with: treeImageArray, duration: 10)

    
        
        //Bird motion creation
        
        var birdImageArray: [UIImage]
        birdImageArray = [UIImage(named: "bird1.png")!,
                           UIImage(named: "bird2.png")!,
                           UIImage(named: "bird3.png")!,
                           UIImage(named: "bird4.png")!,
                           UIImage(named: "bird5.png")!,
                           UIImage(named: "bird5.png")!,
                           UIImage(named: "bird6.png")!,
                           UIImage(named: "bird7.png")!,
                           UIImage(named: "bird8.png")!,
                           UIImage(named: "bird9.png")!,
                           UIImage(named: "bird10.png")!]
        

        
       
   //////////////////////////////////////////////////////
        
        
        
        
        
        
        
        
        
        
        
        //bird creation
        //Create a new UIImageView from scratchvar
       
        var birdView = UIImageView(image: UIImage.animatedImage(with: birdImageArray, duration: 0.9))
        birdView.image = UIImage(named: "bird1.png")
        birdView.frame = CGRect(x:700, y: 100, width: 50, height: 45)
        self.view.addSubview(birdView)
        birdView.image = UIImage.animatedImage(with: birdImageArray, duration: 0.9)

 
        
        var birdView2 = UIImageView(image: UIImage.animatedImage(with: birdImageArray, duration: 0.9))
        birdView2.image = UIImage(named: "bird2.png")
        birdView2.frame = CGRect(x:700, y: 300, width: 50, height: 45)
        self.view.addSubview(birdView2)
        birdView2.image = UIImage.animatedImage(with: birdImageArray, duration: 0.9)

        
        var birdView3 = UIImageView(image: UIImage.animatedImage(with: birdImageArray, duration: 0.9))
        birdView3.image = UIImage(named: "bird3.png")
        birdView3.frame = CGRect(x:700, y: 300, width: 50, height: 45)
        self.view.addSubview(birdView3)
        birdView3.image = UIImage.animatedImage(with: birdImageArray, duration: 0.9)

        
        var birdView4 = UIImageView(image: UIImage.animatedImage(with: birdImageArray, duration: 0.9))
        birdView4.image = UIImage(named: "bird4.png")
        birdView4.frame = CGRect(x:700, y: 30, width: 50, height: 45)
        self.view.addSubview(birdView4)
        birdView4.image = UIImage.animatedImage(with: birdImageArray, duration: 0.9)

        
        
        var birdView5 = UIImageView(image: UIImage.animatedImage(with: birdImageArray, duration: 0.9))
        birdView5.image = UIImage(named: "bird5.png")
        birdView5.frame = CGRect(x:700, y: 30, width: 50, height: 45)
        self.view.addSubview(birdView5)
        birdView5.image = UIImage.animatedImage(with: birdImageArray, duration: 0.9)

        
        var birdView6 = UIImageView(image: UIImage.animatedImage(with: birdImageArray, duration: 0.9))
        birdView6.image = UIImage(named: "bird6.png")
        birdView6.frame = CGRect(x:700, y: 0, width: 50, height: 45)
        self.view.addSubview(birdView6)
        birdView6.image = UIImage.animatedImage(with: birdImageArray, duration: 0.9)

        
        var birdView7 = UIImageView(image: UIImage.animatedImage(with: birdImageArray, duration: 0.9))
        birdView7.image = UIImage(named: "bird7.png")
        birdView7.frame = CGRect(x:700, y: 250, width: 50, height: 45)
        self.view.addSubview(birdView7)
        birdView7.image = UIImage.animatedImage(with: birdImageArray, duration: 0.9)

        
        var birdView8 = UIImageView(image: UIImage.animatedImage(with: birdImageArray, duration: 0.9))
        birdView8.image = UIImage(named: "bird8.png")
        birdView8.frame = CGRect(x:700, y: 80, width: 50, height: 45)
        self.view.addSubview(birdView8)
        birdView8.image = UIImage.animatedImage(with: birdImageArray, duration: 0.9)

        
        
        var birdView9 = UIImageView(image: UIImage.animatedImage(with: birdImageArray, duration: 0.9))
        birdView9.image = UIImage(named: "bird9.png")
        birdView9.frame = CGRect(x:700, y: 50, width: 50, height: 45)
        self.view.addSubview(birdView9)
        birdView9.image = UIImage.animatedImage(with: birdImageArray, duration: 0.9)

        
        var birdView10 = UIImageView(image: UIImage.animatedImage(with: birdImageArray, duration: 0.9))
        birdView10.image = UIImage(named: "bird10.png")
        birdView10.frame = CGRect(x:700, y: 100, width: 50, height: 45)
        self.view.addSubview(birdView10)
        birdView10.image = UIImage.animatedImage(with: birdImageArray, duration: 0.9)

 
 
 
        //////////////////////////////////////////////
       // Make the obstacle crows move to the left of the screen, preferably with various speed.
        
        
        dynamicAnimator = UIDynamicAnimator(referenceView: self.view)
        dynamicItemBehavior = UIDynamicItemBehavior(items: [birdView,birdView2, birdView3, birdView4, birdView5, birdView6, birdView7, birdView8, birdView9, birdView10 ])
        self.dynamicItemBehavior.addLinearVelocity(CGPoint(x: -100, y: -1), for: birdView)
        self.dynamicItemBehavior.addLinearVelocity(CGPoint(x: -100, y: -1), for: birdView2)
        self.dynamicItemBehavior.addLinearVelocity(CGPoint(x: -100, y: -1), for: birdView3)
        self.dynamicItemBehavior.addLinearVelocity(CGPoint(x: -100, y: -1), for: birdView4)
        //self.dynamicItemBehavior.addLinearVelocity(CGPoint(x: -100, y: -1), for: birdView5)
        //self.dynamicItemBehavior.addLinearVelocity(CGPoint(x: -100, y: -1), for: birdView6)
        //self.dynamicItemBehavior.addLinearVelocity(CGPoint(x: -100, y: -1), for: birdView7)
        //self.dynamicItemBehavior.addLinearVelocity(CGPoint(x: -100, y: -1), for: birdView8)
        //self.dynamicItemBehavior.addLinearVelocity(CGPoint(x: -100, y: -1), for: birdView9)
       // self.dynamicItemBehavior.addLinearVelocity(CGPoint(x: -60, y: -1), for: birdView10)
        dynamicAnimator.addBehavior(dynamicItemBehavior)

        
        /////////////////////////////////////////////

        
        //rom time to time, you may wish to generate a delay before certain events happen. You can use a timer for that purpose.
        let when = DispatchTime.now() + 5
        DispatchQueue.main.asyncAfter(deadline: when) {
            //Your code for actions when the time is up
            self.dynamicItemBehavior.addLinearVelocity(CGPoint(x: -150, y: -1), for: birdView10)
            self.dynamicItemBehavior.addLinearVelocity(CGPoint(x: -180, y: -1), for: birdView8)
            self.dynamicItemBehavior.addLinearVelocity(CGPoint(x: -200, y: -1), for: birdView9)
            //self.dynamicItemBehavior.addLinearVelocity(CGPoint(x: -200, y: -1), for: birdImageArray)

           
        }
      
        
        let Timer2 = DispatchTime.now () + 10
        DispatchQueue.main.asyncAfter(deadline: Timer2) {
            //Your code for actions when the time is up
            self.dynamicItemBehavior.addLinearVelocity(CGPoint(x: -100, y: -1), for: birdView7)
            self.dynamicItemBehavior.addLinearVelocity(CGPoint(x: -100, y: -1), for: birdView5)
            self.dynamicItemBehavior.addLinearVelocity(CGPoint(x: -100, y: -1), for: birdView6)
            self.dynamicItemBehavior.addLinearVelocity(CGPoint(x: -100, y: -1), for: birdView4)

         
         
         
         
        }
         /////////////////////////////////////////////////////////////////////


        // Ainmation for Tree and clouds
        UIView.animate(withDuration: 50, delay: 1, options:
            [UIView.AnimationOptions.repeat, .curveLinear], animations:
            {
                self.cloud.center.x -= self.view.bounds.width
                self.cloud2.center.x -= self.view.bounds.width
                //self.tree.center.x -= self.view.bounds.width

        }, completion: nil
            
      
        )
        
       // override func didReceiveMemoryWarning() {
           // super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
       // }

    }
    
    
    

    
    
    

}

