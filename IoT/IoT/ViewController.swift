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
        // Do any additional setup after loading the view, typically from a nib.
        checkTemperature = Timer.scheduledTimer(timeInterval: 5, target: self, selector: #selector(verificarTemperatura), userInfo: nil, repeats: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func cambiarModo(_ sender: Any) {
        if btnModo.isOn {
            obj.cambiar_Mode_Manual()
            
            btnPersianas.isEnabled = true
            btnAireAcondicionado.isEnabled = true
            btnCalefaccion.isEnabled = true
            
            
        } else {
            obj.cambiar_Mode_Auto()
            
            btnPersianas.isEnabled = false
            btnAireAcondicionado.isEnabled = false
            btnCalefaccion.isEnabled = false
            
            btnPersianas.isOn = false
            btnAireAcondicionado.isOn = false
            btnCalefaccion.isOn = false
            
        }
    }

    @IBAction func actionPersianas(_ sender: Any) {
        if btnPersianas.isOn{
            obj.cambiar_Persiana_ON()
        } else {
            obj.cambiar_Persiana_OFF()
        }
    }
    
    @IBAction func actionAireAcondicionado(_ sender: Any) {
        
        if btnAireAcondicionado.isOn{
            if btnCalefaccion.isOn{
                obj.cambiar_Heat_OFF()
                btnCalefaccion.isOn = false
            }
            obj.cambiar_Cooler_ON()
        } else {
            obj.cambiar_Cooler_OFF()
        }
    }
    
    @IBAction func actionCalefaccion(_ sender: Any) {
        
        if btnCalefaccion.isOn{
            if btnAireAcondicionado.isOn {
                obj.cambiar_Cooler_OFF()
                btnAireAcondicionado.isOn = false
            }
             obj.cambiar_Heat_ON()
        } else {
            obj.cambiar_Heat_OFF()
        }
    }
    
    @objc func verificarTemperatura() {
        
        do{
            let content = try String(contentsOf: URL(string: obj.url_get_temp_value)!, encoding: String.Encoding.utf8)
            lblTemperature.text = String(Double(round(100*Double(content)!)/100))
        } catch {
            print("JSON serialization failed: \(error)")
        }
    }
    
    
}

