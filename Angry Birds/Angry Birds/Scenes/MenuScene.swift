//
//  MenuScene.swift
//  Angry Birds
//
//  Created by Li Ju on 2018-09-19.
//  Copyright © 2018 Li Ju. All rights reserved.
//

import SpriteKit

class MenuScene: SKScene {
    var sceneManagerDelegate: SceneManagerDelegate?
    
    override func didMove(to view: SKView) {
        setupMenu()
    }
    
    func setupMenu() {
        
        let background = SKSpriteNode(imageNamed: "menuBackground")
        background.position = CGPoint(x: frame.midX, y: frame.midY)
        background.aspecScale(to: frame.size, width: true, multiplier: 1.0)
        background.zPosition = ZPositions.background
        addChild(background)
        
        let button = SpriteKitButton(defaultButtonImage: "playButton", action: goToLevelScene, index: 0)
        button.position = CGPoint(x: frame.midX, y: frame.midY * 0.8)
        button.aspecScale(to: frame.size, width: false, multiplier: 0.2)
        button.zPosition = ZPositions.hudLabel
        addChild(button)
    }
    
    func goToLevelScene(_: Int) {
        sceneManagerDelegate?.presentLevelScene()
    }
}
