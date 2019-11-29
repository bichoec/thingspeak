//
//  ObjIoT.swift
//  IoT
//
//  Created by Eric Guzman on 12/20/17.
//  Copyright © 2017 Eric Guzman. All rights reserved.
//

import UIKit

class ObjIoT: NSObject {

    //API Key Thingspeak
    let api_key : String = "{{API Key Thingspeak}}"
    //URL for Talkback de Thingspeak
    let url_post_commands : String = "https://api.thingspeak.com/talkbacks/{{Talkback code}}/commands.json"
    //URL to get data from Thingspeak channel
    let url_get_temp_value : String = "https://api.thingspeak.com/channels/{{Channel code}}/fields/1/last.txt?api_key={{API Key Thingspeak}}"
    
    var request : URLRequest!
    
    var postAPIString : String = "{ \"api_key\": \"{{API Key Thingspeak}}\""
    
    func cambiar_Mode_Manual(){
        request = URLRequest(url: URL(string: url_post_commands)!)
        request.httpMethod = "POST"
        
        let postString = postAPIString + " , \"command_string\": \"{{COMMAND_NAME}}\"}"
        
        request.httpBody = postString.data(using: String.Encoding.utf8)
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        ejecutarComando()
    }
    
    func cambiar_Mode_Auto(){
        request = URLRequest(url: URL(string: url_post_commands)!)
        request.httpMethod = "POST"
        
        let postString = postAPIString + " , \"command_string\": \"{{COMMAND_NAME}}\"}"
        
        request.httpBody = postString.data(using: String.Encoding.utf8)
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        ejecutarComando()
    }
    
    func cambiar_Persiana_ON(){
        request = URLRequest(url: URL(string: url_post_commands)!)
        request.httpMethod = "POST"
        
        let postString = postAPIString + " , \"command_string\": \"{{COMMAND_NAME}}\"}"
        
        request.httpBody = postString.data(using: String.Encoding.utf8)
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        ejecutarComando()
    }
    
    func cambiar_Persiana_OFF(){
        request = URLRequest(url: URL(string: url_post_commands)!)
        request.httpMethod = "POST"
        
        let postString = postAPIString + " , \"command_string\": \"{{COMMAND_NAME}}\"}"
        
        request.httpBody = postString.data(using: String.Encoding.utf8)
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        ejecutarComando()
    }
    
    func cambiar_Cooler_ON(){
        request = URLRequest(url: URL(string: url_post_commands)!)
        request.httpMethod = "POST"
        
        let postString = postAPIString + " , \"command_string\": \"{{COMMAND_NAME}}\"}"
        
        request.httpBody = postString.data(using: String.Encoding.utf8)
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        ejecutarComando()
    }
    
    func cambiar_Cooler_OFF(){
        request = URLRequest(url: URL(string: url_post_commands)!)
        request.httpMethod = "POST"
        
        let postString = postAPIString + " , \"command_string\": \"{{COMMAND_NAME}}\"}"
        
        request.httpBody = postString.data(using: String.Encoding.utf8)
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        ejecutarComando()
    }
    
    func cambiar_Heat_ON(){
        request = URLRequest(url: URL(string: url_post_commands)!)
        request.httpMethod = "POST"
        
        let postString = postAPIString + " , \"command_string\": \"{{COMMAND_NAME}}\"}"
        
        request.httpBody = postString.data(using: String.Encoding.utf8)
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        ejecutarComando()
    }
    
    func cambiar_Heat_OFF(){
        request = URLRequest(url: URL(string: url_post_commands)!)
        request.httpMethod = "POST"
        
        let postString = postAPIString + " , \"command_string\": \"{{COMMAND_NAME}}\"}"
        
        request.httpBody = postString.data(using: String.Encoding.utf8)
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        ejecutarComando()
    }
    
    func ejecutarComando() {
        let task = URLSession.shared.dataTask(with: request) {
            data, response, error in
            //let res = String(data: data!, encoding: String.Encoding.utf8)
            //print(res!)
        }
        task.resume()
    }
        
}
