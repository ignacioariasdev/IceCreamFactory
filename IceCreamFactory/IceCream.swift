//
//  IceCream.swift
//  IceCreamFactory
//
//  Created by Marlhex on 2018-12-16.
//  Copyright © 2018 Ignacio Arias. All rights reserved.
//

import Foundation

enum iceCreamType {
    case maple
    case lemon
    case cherry
}

class IceCream: NSObject {
    var type: iceCreamType
    
    init(_ type:iceCreamType) {
        self.type = type
        super.init()
    }
}
