//
//  Opsgenie.swift
//  SwiftyAtlassian
//
//  Created by Takumi Karibe on 2019/05/12.
//

import Foundation

public extension Atlassian where Infrastructure == Cloud {
    struct Opsgenie<Category: APICategory & OpsgenieAPI>: ServiceProtocol {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
}

public protocol OpsgenieAPI {}
public extension Atlassian.Opsgenie {}
