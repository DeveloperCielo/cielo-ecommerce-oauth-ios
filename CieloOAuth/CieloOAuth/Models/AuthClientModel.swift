//
//  AuthClientModel.swift
//  CieloOAuth
//
//  Created by Jeferson Nazario on 27/02/20.
//  Copyright © 2020 jnazario.com. All rights reserved.
//

import Foundation

struct AuthClientModel: Decodable {
    var accessToken: String
    var tokenType: String
    var expiresIn: String
}
