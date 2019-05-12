//
//  StatusPage.swift
//  SwiftyAtlassian
//
//  Created by Takumi Karibe on 2019/05/12.
//

import Foundation
import Config
import AtlassianProtocol
import StatusPage

public extension Atlassian where Infrastructure == Cloud {
    struct StatusPage<Category: APICategory & StatusPageAPI>: ServiceProtocol {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
}
