//
//  ItemController.swift
//  Fruit Lover
//
//  Created by Frenklin Hasani on 31/07/2018.
//  Copyright © 2018 Frenklin Hasani. All rights reserved.
//

import SpriteKit

struct ColliderType {
    static let PLAYER: UInt32 = 0;
    static let FRUIT_AND_BOMB: UInt32 = 1;
}

class ItemController {
    
    private var minX = CGFloat(-178),maxX = CGFloat(178);

    
    func spawnItems() -> SKSpriteNode {
        
        let item: SKSpriteNode?;
        
        if Int(randomBetweenNumbers(firstNum: 0, secondNum: 10)) >= 6 {
            item = SKSpriteNode(imageNamed: "Bomb");
            item!.name = "Bomb";
            item!.setScale(0.6);
            item!.physicsBody = SKPhysicsBody(circleOfRadius: item!.size.height / 2);
            
        }else {
            let num = Int(randomBetweenNumbers(firstNum: 1, secondNum: 10));
            item = SKSpriteNode(imageNamed: "Fruit \(num)")
            item!.name = "Fruit";
            item!.setScale(0.7);
            item!.physicsBody = SKPhysicsBody(circleOfRadius: item!.size.height / 2);
        }
        
        item!.physicsBody?.categoryBitMask = ColliderType.FRUIT_AND_BOMB;
        item!.zPosition = 3;
        item!.anchorPoint = CGPoint(x: 0.5, y: 0.5);
        item!.size.width = 89;
        item!.size.height = 65;
        item!.position.x = randomBetweenNumbers(firstNum: minX, secondNum: maxX)
        item!.position.y = 500;
        
        return item!;
    }
    
    func randomBetweenNumbers(firstNum: CGFloat, secondNum: CGFloat) -> CGFloat {
        return CGFloat(arc4random()) / CGFloat(UINT32_MAX) * abs(firstNum-secondNum) + min(firstNum,secondNum);
    }
    
}//class
