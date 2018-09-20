//
//  AnimationHelper.swift
//  Angry Birds
//
//  Created by Li Ju on 2018-09-19.
//  Copyright © 2018 Li Ju. All rights reserved.
//

import SpriteKit

class AnimationHelper {
    static func loadTexture(from atlas: SKTextureAtlas, withName name: String) -> [SKTexture] {
        var textures = [SKTexture]()
        
        for index in 0..<atlas.textureNames.count {
            let textureName = name + String(index + 1)
            textures.append(atlas.textureNamed(textureName))
        }
        return textures
    }
}
