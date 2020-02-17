//
//  ViewController.swift
//  IoT
//
//  Created by Eric Guzman on 12/19/17.
//  Copyright © 2017 Eric Guzman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btnModo: UISwitch!
    @IBOutlet weak var btnPersianas: UISwitch!
    @IBOutlet weak var btnAireAcondicionado: UISwitch!
    @IBOutlet weak var btnCalefaccion: UISwitch!
    @IBOutlet weak var lblTemperature: UILabel!
    
    var obj = ObjIoT()
    var checkTemperature : Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        checkTemperature = Timer.scheduledTimer(timeInterval: 5, target: self, selector: #selector(verificarTemperatura), userInfo: nil, repeats: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
}

