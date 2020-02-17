//
//  ViewController_Functions.swift
//  IoT
//
//  Created by Eric Guzman on 2/17/20.
//  Copyright © 2020 Eric Guzman. All rights reserved.
//

import Foundation

extension ViewController {
    @objc func verificarTemperatura() {
        
        do{
            let content = try String(contentsOf: URL(string: obj.url_get_temp_value)!, encoding: String.Encoding.utf8)
            lblTemperature.text = String(Double(round(100*Double(content)!)/100))
        } catch {
            print("JSON serialization failed: \(error)")
        }
    }
}
