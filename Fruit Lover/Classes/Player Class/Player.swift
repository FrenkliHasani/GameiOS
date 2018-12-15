//
//  Player.swift
//  Fruit Lover
//
//  Created by Frenklin Hasani on 28/07/2018.
//  Copyright © 2018 Frenklin Hasani. All rights reserved.
//

import SpriteKit

class Player: SKSpriteNode {
    private var minX = CGFloat(-178),maxX = CGFloat(178);
    
    func initializePlayer() {
        name = "Player";
        physicsBody = SKPhysicsBody(circleOfRadius: size.height / 2);
        physicsBody?.affectedByGravity = false;
        physicsBody?.isDynamic = false;
        physicsBody?.categoryBitMask = ColliderType.PLAYER;
        physicsBody?.contactTestBitMask = ColliderType.FRUIT_AND_BOMB
        
    }
    
    func move(left: Bool) {
        if left {
            position.x -= 15;
            if position.x < minX {
                position.x = minX;
            }
            
        }else {
            position.x += 15;
            if position.x > maxX {
                position.x = maxX;
            }

        }
    }
} //class
