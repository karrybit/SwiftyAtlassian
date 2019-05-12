//
//  JiraSoftware.swift
//  SwiftyAtlassian
//
//  Created by Takumi Karibe on 2019/05/12.
//

import Foundation

public extension Atlassian {
    struct JiraSoftware<Category: JiraSoftwereAPI>: ServiceProtocol {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
}

public protocol JiraSoftwereAPI: APICategory {}
public enum Sprint: JiraSoftwereAPI {}
