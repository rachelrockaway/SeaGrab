//
//  SeaGrab.swift
//  SeaGrab
//
//  Created by Rachel Stevenson on 11/29/15.
//  Copyright © 2015 rachelrockaway. All rights reserved.
//

import SpriteKit

enum SeaGrabType: Int {
    case UnKnown = 0, Blue, Horse, Jelly, Red, Turtle, Yellow

    var description: String {
        return spriteName
    }
    
    var spriteName: String {
        let spriteNames = [
            "Blue",
            "Horse",
            "Jelly",
            "Red",
            "Turtle",
            "Yellow"]
    return spriteNames[rawValue - 1]
}
var highlightedSpriteName: String {
    return spriteName + "-Highlighted"
  }
    static func random() -> SeaGrabType {
        return SeaGrabType(rawValue: Int(arc4random_uniform(6)) + 1)!
    }
}

class SeaGrab {
    
    var descripton: String {
        return "type:\(seaGrabType) square: (\(column),\(row))"
    }

    var column: Int
    var row: Int
    let seaGrabType: SeaGrabType
    var sprite: SKSpriteNode?
    
    init(column: Int, row: Int, seaGrabType: SeaGrabType) {
        self.column = column
        self.row = row
        self.seaGrabType = seaGrabType
        
        }
}
