//
//  ServiceProtocol.swift
//  SwiftyAtlassian
//
//  Created by Takumi Karibe on 2019/05/12.
//

import Foundation

public protocol ServiceProtocol {
    var servicePath: String { get }
}

public extension ServiceProtocol {
    var servicePath: String {
        return ""
    }
}
