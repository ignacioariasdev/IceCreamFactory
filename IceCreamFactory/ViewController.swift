//
//  ViewController.swift
//  IceCreamFactory
//
//  Created by Marlhex on 2018-12-16.
//  Copyright © 2018 Ignacio Arias. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var iceCreamJar:IceCreamController?
    
    
    @IBOutlet weak var totalFlavours: UILabel!
    @IBOutlet weak var mapleIceCreamFlavours: UILabel!
    @IBOutlet weak var lemonIceCreamFlavours: UILabel!
    @IBOutlet weak var cherryIceCreamFlavours: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        iceCreamJar = IceCreamController()
        refreshUI()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    @IBAction func onGenerateMapleIceCreamFlavours(_ sender: Any) {
        iceCreamJar?.addMapleIceCreamFlavour()
        refreshUI()
    }
    
    
    @IBAction func onGenerateLemonIceCreamFlavours(_ sender: Any) {
        iceCreamJar?.addLemonIceCreamFlavour()
        refreshUI()
    }
    
    
    @IBAction func onGenerateCherryIceCreamFlavours(_ sender: Any) {
        iceCreamJar?.addCherryIceCreamFlavour()
        refreshUI()
    }
    
    @IBAction func onClearAllIceCreamFlavours(_ sender: Any) {
        iceCreamJar?.reset()
        refreshUI()
    }
    
    private func refreshUI() -> Void {
        let totalMaple = iceCreamJar!.mapleFlavours!.count
        let totalLemon = iceCreamJar!.mapleFlavours!.count
        let totalCherry = iceCreamJar!.mapleFlavours!.count
        let total = totalMaple + totalLemon + totalCherry
        
        mapleIceCreamFlavours.text = "Maple IceCream: \(totalMaple)"
        lemonIceCreamFlavours.text = "Lemon IceCream: \(totalLemon)"
        cherryIceCreamFlavours.text = "Cherry IceCream: \(totalCherry)"
        totalFlavours.text = "Total Flavours: \(total)"
    }
    
}

