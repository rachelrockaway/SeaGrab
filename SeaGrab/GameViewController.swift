//
//  GameViewController.swift
//  SeaGrab
//
//  Created by Rachel Stevenson on 11/29/15.
//  Copyright (c) 2015 rachelrockaway. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {
    var scene: GameScene!
    
    override func prefersStatusBarHidden()-> Bool {
        return true
    }
    
    override func shouldAutorotate() -> Bool {
        return true
    }
    
    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        return UIInterfaceOrientationMask.AllButUpsideDown
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

            // Configure the view.
            let skView = self.view as! SKView
            skView.multipleTouchEnabled = false
        
            //Create and configure the scene.
        scene = GameScene(size: skView.bounds.size)
            scene.scaleMode = .AspectFill
        
            //Present the scene.
            skView.presentScene(scene)
        }
    }

