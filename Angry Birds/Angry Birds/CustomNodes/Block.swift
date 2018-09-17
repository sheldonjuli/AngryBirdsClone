//
//  Block.swift
//  Angry Birds
//
//  Created by Li Ju on 2018-09-15.
//  Copyright © 2018 Li Ju. All rights reserved.
//

import SpriteKit

enum BlockType: String {
    case wood, stone, glass
}

class Block: SKSpriteNode {
    let type: BlockType
    var health: Int
    let damageThreshold: Int
    
    init(type: BlockType) {
        self.type = type
        switch type {
        case .wood:
            health = 200
        case .stone:
            health = 200
        case .glass:
            health = 50
        }
        
        damageThreshold = health / 2
        let textrue = SKTexture(imageNamed: type.rawValue)
        super.init(texture: textrue, color: UIColor.clear, size: CGSize.zero)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func createPhysicsBody() {
        physicsBody = SKPhysicsBody(rectangleOf: size)
        physicsBody?.isDynamic = true
        physicsBody?.categoryBitMask = PhysicsCategory.block
        physicsBody?.collisionBitMask = PhysicsCategory.all
    }
    
    func impact(with force: Int) {
        health -= force
        if health < 1 {
            removeFromParent()
        } else if health < damageThreshold {
            let brokenTexture = SKTexture(imageNamed: type.rawValue + "Broken")
            texture = brokenTexture
        }
    }

}
