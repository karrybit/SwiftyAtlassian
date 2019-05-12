//
//  Trello.swift
//  SwiftyAtlassian
//
//  Created by Takumi Karibe on 2019/05/12.
//

import Foundation

public extension Atlassian where Infrastructure == Cloud {
    enum TrelloAPICategory {}
    struct Trello<Category: APICategory & TrelloAPI>: ServiceProtocol {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
}

public protocol TrelloAPI {}
public extension Atlassian.TrelloAPICategory {}
