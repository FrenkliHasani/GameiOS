//
//  MainMenuScene.swift
//  Fruit Lover
//
//  Created by Frenklin Hasani on 26/07/2018.
//  Copyright © 2018 Frenklin Hasani. All rights reserved.
//

import SpriteKit

class MainMenuScene: SKScene {
    

    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let location = touch.location(in: self);
            
            if atPoint(location).name == "Start" {
                
                
            
            if let scene = GameplaySceneClass(fileNamed: "GameplayScene") {
                // Set the scale mode to scale to fit the window
                scene.scaleMode = .aspectFill
                
                // Present the scene
                view!.presentScene(scene, transition: SKTransition.doorsOpenVertical(withDuration: TimeInterval(2)))
            }
                
        }
    }
    
}
    
} //Class

