//
//  JiraServiceDesk.swift
//  SwiftyAtlassian
//
//  Created by Takumi Karibe on 2019/05/12.
//

import Foundation
import Config
import AtlassianProtocol
import JiraServiceDesk

public extension Atlassian {
    struct JiraServiceDesk<Category: APICategory & JiraServiceDeskAPI>: ServiceProtocol {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
}
