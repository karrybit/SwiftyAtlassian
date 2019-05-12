//
//  Crowd.swift
//  SwiftyAtlassian
//
//  Created by Takumi Karibe on 2019/05/12.
//

import Foundation
import Config
import AtlassianProtocol
import Crowd

public extension Atlassian where Infrastructure == Server {
    struct Crowd<Category: APICategory & CrowdAPI>: ServiceProtocol {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
}
