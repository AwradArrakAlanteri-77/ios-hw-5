//
//  Player.swift
//  MarioParty
//
//  Created by Awrad Awrad on 4/13/1399 AP.
//  Copyright © 1399 Dalal Alhazeem. All rights reserved.
//

import Foundation

struct Player
{
    var name: String
    func bgname() -> String {
        return name + "BG"
    }
    func musicName() -> String {
        return name + ".WAV"
    }
    
}
 
let players: [Player] = [
    
    Player(name: "Bowser"),
    Player(name: "Luigi"),
    Player(name: "Mario"),
    Player(name: "Peach"),
    Player(name: "Waluigi"),
    Player(name: "Yoshi")
]
