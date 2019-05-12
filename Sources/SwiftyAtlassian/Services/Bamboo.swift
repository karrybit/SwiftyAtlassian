//
//  Bamboo.swift
//  SwiftyAtlassian
//
//  Created by Takumi Karibe on 2019/05/12.
//

import Foundation
import Config
import AtlassianProtocol
import Bamboo

public extension Atlassian where Infrastructure == Server {
    struct Bamboo<Category: APICategory & BambooAPI>: ServiceProtocol {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
}
