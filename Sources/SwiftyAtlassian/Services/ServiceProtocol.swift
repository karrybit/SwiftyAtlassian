//
//  ServiceProtocol.swift
//  SwiftyAtlassian
//
//  Created by Takumi Karibe on 2019/05/12.
//

import Foundation

public protocol ServiceProtocol {
    var config: Config { get }
    init(withAuth config: Config)
}
