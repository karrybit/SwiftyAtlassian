//
//  ServiceProtocol.swift
//  SwiftyAtlassian
//
//  Created by Takumi Karibe on 2019/05/12.
//

import Foundation

public protocol ServiceProtocol {
    static var servicePath: String { get }
}

public extension ServiceProtocol {
    static var servicePath: String {
        return "rest/api/"
    }
}
