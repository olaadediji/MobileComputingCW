//
//  PlaneDragView.swift
//  CW_OlaAdediji
//
//  Created by Ola on 04/01/2019.
//  Copyright © 2019 Ola. All rights reserved.
//

import UIKit

class PlaneDragView: UIImageView {

    var startLocation: CGPoint?
    var myDelegate: subviewDelegate?

    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        startLocation = touches.first?.location(in: self)
        print("2")
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        let currentLocation = touches.first?.location(in: self)
        let dx = currentLocation!.x - startLocation!.x
        let dy = currentLocation!.y - startLocation!.y
        
        self.center = CGPoint(x: self.center.x + dx, y: self.center.y + dy)

        self.myDelegate?.changeSomething()
        print("1")

    }
    
    
    
    

}
