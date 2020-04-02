//
//  AccessToken.swift
//  CieloOAuth
//
//  Created by Jeferson Nazario on 27/02/20.
//  Copyright © 2020 jnazario.com. All rights reserved.
//

import Foundation

public struct AccessToken: Decodable {
    public var token: String
    var expiresIn: String
    var issuedAt: Date
    
    func stillValid() -> Bool {
//        var issMs = issuedAt.time
//        var nowMs = Calendar.getInstance().time.time
//        var expMs = (issMs + expiresIn * 1000)
//
//        return nowMs in issMs until expMs
        
        return false
    }
}
