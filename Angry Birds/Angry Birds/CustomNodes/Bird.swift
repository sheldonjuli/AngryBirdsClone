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
            }
        }
    }
    
    init(type: BirdType) {
        birdType = type
        let texture = SKTexture(imageNamed: type.rawValue + "1")
        super.init(texture: texture, color: UIColor.clear, size: texture.size())
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
