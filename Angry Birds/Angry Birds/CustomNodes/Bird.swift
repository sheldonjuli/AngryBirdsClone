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
    
    init(type: BirdType) {
        birdType = type
        
        let color: UIColor!
        switch type {
        case .red:
            color = UIColor.red
        case .blue:
            color = UIColor.blue
        case .yellow:
            color = UIColor.yellow
        case .gray:
            color = UIColor.lightGray
        }
        super.init(texture: nil, color: color, size: CGSize(width: 40.0, height: 40.0))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
