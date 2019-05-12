//
//  Bamboo.swift
//  SwiftyAtlassian
//
//  Created by Takumi Karibe on 2019/05/12.
//

import Foundation

public extension Atlassian where Infrastructure == Server {
    enum BambooAPICategory {}
    struct Bamboo<Category: APICategory & BambooAPI>: ServiceProtocol {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
}

public protocol BambooAPI {}
public extension Atlassian.BambooAPICategory {}
