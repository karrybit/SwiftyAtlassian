//
//  JiraSoftware.swift
//  SwiftyAtlassian
//
//  Created by Takumi Karibe on 2019/05/12.
//

import Foundation

public extension Atlassian {
    struct JiraSoftware<Category: APICategory & JiraSoftwereAPI>: ServiceProtocol {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
}

public protocol JiraSoftwereAPI {}
public extension Atlassian.JiraSoftware {
    enum Backlog:           APICategory & JiraSoftwereAPI {}
    enum Board:             APICategory & JiraSoftwereAPI {}
    enum BoardEpic:         APICategory & JiraSoftwereAPI {}
    enum BoardProject:      APICategory & JiraSoftwereAPI {}
    enum BoardProperties:   APICategory & JiraSoftwereAPI {}
    enum BoardSprint:       APICategory & JiraSoftwereAPI {}
    enum BoardVersion:      APICategory & JiraSoftwereAPI {}
    enum Epic:              APICategory & JiraSoftwereAPI {}
    enum Issue:             APICategory & JiraSoftwereAPI {}
    enum Sprint:            APICategory & JiraSoftwereAPI {}
    enum SprintProperties:  APICategory & JiraSoftwereAPI {}
}
