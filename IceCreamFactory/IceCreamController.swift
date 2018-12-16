//
//  IceCreamController.swift
//  IceCreamFactory
//
//  Created by Marlhex on 2018-12-16.
//  Copyright © 2018 Ignacio Arias. All rights reserved.
//

import Foundation

class IceCreamController : NSObject {
    
    var mapleFlavours:[IceCream]?
    var lemonFlavours:[IceCream]?
    var cherryFlavours:[IceCream]?
    
    override init() {
        self.mapleFlavours = [IceCream]()
        self.lemonFlavours = [IceCream]()
        self.cherryFlavours = [IceCream]()
        super.init()
    }
    
    func reset() {
        self.mapleFlavours?.removeAll()
        self.lemonFlavours?.removeAll()
        self.cherryFlavours?.removeAll()
    }
    
    func addMapleIceCreamFlavour() -> Void {
        let iceCream = IceCream(.maple)
        mapleFlavours?.append(iceCream)
    }
    
    
    func addLemonIceCreamFlavour() -> Void {
        let iceCream = IceCream(.lemon)
        lemonFlavours?.append(iceCream)
    }
    
    func addCherryIceCreamFlavour() -> Void {
        let iceCream = IceCream(.cherry)
        cherryFlavours?.append(iceCream)
    }
}
