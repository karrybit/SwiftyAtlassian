//
//  Trello.swift
//  SwiftyAtlassian
//
//  Created by Takumi Karibe on 2019/05/12.
//

import Foundation
import Config
import AtlassianProtocol
import Trello

public extension Atlassian where Infrastructure == Cloud {
    struct Trello<Category: APICategory & TrelloAPI>: ServiceProtocol {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
}
