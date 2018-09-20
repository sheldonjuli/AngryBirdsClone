//
//  Level.swift
//  Angry Birds
//
//  Created by Li Ju on 2018-09-20.
//  Copyright © 2018 Li Ju. All rights reserved.
//

import Foundation

struct LevelData {
    let birds: [String]
    
    init?(level: Int) {
        guard let levelDictionary = Levels.levelsDictionary["Level_\(level)"] as? [String: Any] else {
            return nil
        }
        
        guard let birds = levelDictionary["Birds"] as? [String] else {
            return nil
        }
        self.birds = birds
    }
}
