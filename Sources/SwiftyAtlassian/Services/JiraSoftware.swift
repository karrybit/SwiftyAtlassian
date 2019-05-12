//
//  JiraSoftware.swift
//  SwiftyAtlassian
//
//  Created by Takumi Karibe on 2019/05/12.
//

import Foundation
import Config
import AtlassianProtocol
import JiraSoftwere

public extension Atlassian {
    struct JiraSoftware<Category: APICategory & JiraSoftwereAPI>: ServiceProtocol {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
}
