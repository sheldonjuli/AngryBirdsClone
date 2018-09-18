//
//  SKNode+Extensions.swift
//  Angry Birds
//
//  Created by Li Ju on 2018-09-17.
//  Copyright © 2018 Li Ju. All rights reserved.
//

import SpriteKit

extension SKNode {
    func aspecScale(to size: CGSize, width: Bool, multiplier: CGFloat) {
        let scale = width ? (size.width * multiplier) / self.frame.size.width : (size.height * multiplier) / self.frame.size.height
        self.setScale(scale)
    }
}
