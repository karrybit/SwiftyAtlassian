//
//  Config.swift
//  SwiftyAtlassian
//
//  Created by Takumi Karibe on 2019/05/12.
//

import Foundation

public struct AuthConfig {
    public let name: String
    public let password: String

    public init(name: String, password: String) {
        self.name = name
        self.password = password
    }
}
