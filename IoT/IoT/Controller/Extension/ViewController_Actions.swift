//
//  ViewController_Actions.swift
//  IoT
//
//  Created by Eric Guzman on 2/17/20.
//  Copyright © 2020 Eric Guzman. All rights reserved.
//

import Foundation

extension ViewController {
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
}
