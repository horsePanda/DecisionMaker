//
//  InterfaceController.swift
//  DecisionMakerWatch Extension
//
//  Created by Xiaoyu Huang on 5/17/17.
//  Copyright © 2017 XiaoyuHuang. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var actionImage: WKInterfaceImage!
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    func delay(_ seconds: Double, completion: @ escaping () -> ()){
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
            completion()
        }
    }

    @IBAction func start() {
        actionImage.setImageNamed("action")
        actionImage.startAnimatingWithImages(
            in: NSRange(location: 0, length:3),
            duration:0.3,
            repeatCount: 3)
        delay(0.9){
            var imageName = arc4random_uniform(3)
            self.actionImage.setImageNamed("action\(imageName)")
        }
        
    }

}
