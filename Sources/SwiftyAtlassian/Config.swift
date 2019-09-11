//
//  Config.swift
//  SwiftyAtlassian
//
//  Created by Takumi Karibe on 2019/05/12.
//

import Foundation

public struct Config {
    public let name: String
    public let password: String
    public let baseUrlString: String
    
    public init(name: String, password: String, baseUrlString: String) {
        self.name = name
        self.password = password
        self.baseUrlString = baseUrlString.hasSuffix("/") ? baseUrlString : baseUrlString + "/"
    }
}
