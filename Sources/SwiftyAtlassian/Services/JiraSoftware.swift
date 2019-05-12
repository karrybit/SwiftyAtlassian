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
    enum Backlog: JiraSoftwereAPI {}
    enum Board: JiraSoftwereAPI {}
    enum BoardEpic: JiraSoftwereAPI {}
    enum BoardProject: JiraSoftwereAPI {}
    enum BoardProperties: JiraSoftwereAPI {}
    enum BoardSprint: JiraSoftwereAPI {}
    enum BoardVersion: JiraSoftwereAPI {}
    enum Epic: JiraSoftwereAPI {}
    enum Issue: JiraSoftwereAPI {}
    enum Sprint: JiraSoftwereAPI {}
    enum SprintProperties: JiraSoftwereAPI {}
}
