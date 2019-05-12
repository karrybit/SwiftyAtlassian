//
//  Bamboo.swift
//  SwiftyAtlassian
//
//  Created by Takumi Karibe on 2019/05/12.
//

import Foundation

public extension Atlassian where Infrastructure == Server {
    struct Bamboo<Category: BambooAPI>: ServiceProtocol {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
}

public protocol BambooAPI: APICategory {}
