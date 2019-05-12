//
//  Jira.swift
//  SwiftyAtlassian
//
//  Created by Takumi Karibe on 2019/05/12.
//

import Foundation
import Config
import AtlassianProtocol
import Jira

public extension Atlassian {
    struct Jira<Category: APICategory & JiraAPI>: ServiceProtocol {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
}
