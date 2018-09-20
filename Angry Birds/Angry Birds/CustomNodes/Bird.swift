//
//  Bird.swift
//  Angry Birds
//
//  Created by Li Ju on 2018-09-15.
//  Copyright © 2018 Li Ju. All rights reserved.
//

import SpriteKit

enum BirdType: String {
    case red, blue, yellow, gray
}

class Bird: SKSpriteNode {
    let birdType: BirdType
    var isDragged = false
    
    var isFlying = false {
        didSet {
            if isFlying {
                physicsBody?.isDynamic = true
                animateFlight(active: true)
            } else {
                animateFlight(active: false)
            }
        }
    }
    
    let flyingFrames: [SKTexture]
    
    init(type: BirdType) {
        birdType = type
        flyingFrames = AnimationHelper.loadTexture(from: SKTextureAtlas(named: type.rawValue), withName: type.rawValue)
        let texture = SKTexture(imageNamed: type.rawValue + "1")
        super.init(texture: texture, color: UIColor.clear, size: texture.size())
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func animateFlight(active: Bool) {
        if active {
            run(SKAction.repeatForever(SKAction.animate(with: flyingFrames, timePerFrame: 0.1, resize: true, restore: true)))
        } else {
            removeAllActions()
        }
    }
}
