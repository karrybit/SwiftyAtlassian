//
//  Confluence.swift
//  SwiftyAtlassian
//
//  Created by Takumi Karibe on 2019/05/12.
//

import Foundation

public extension Atlassian {
    struct Confluence<Category: ConfluenceAPI>: ServiceProtocol {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
}

public protocol ConfluenceAPI: APICategory {}
public enum Content: ConfluenceAPI {}
