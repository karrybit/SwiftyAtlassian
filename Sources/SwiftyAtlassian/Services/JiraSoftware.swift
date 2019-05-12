//
//  JiraSoftware.swift
//  SwiftyAtlassian
//
//  Created by Takumi Karibe on 2019/05/12.
//

import Foundation

public extension Atlassian {
    enum JiraSoftwereAPICategory {}
    struct JiraSoftware<Category: APICategory & JiraSoftwereAPI>: ServiceProtocol {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
}

public protocol JiraSoftwereAPI {}
public extension Atlassian.JiraSoftwereAPICategory {
    enum Backlog:           APICategory & JiraSoftwereAPI {}
    enum Board:             APICategory & JiraSoftwereAPI {}
    enum Epic:              APICategory & JiraSoftwereAPI {}
    enum Issue:             APICategory & JiraSoftwereAPI {}
    enum Sprint:            APICategory & JiraSoftwereAPI {}
}

public extension Atlassian.JiraSoftwereAPICategory where Infrastructure == Cloud {
    enum Bulk: APICategory & JiraSoftwereAPI {}
    enum BulkRepository: APICategory & JiraSoftwereAPI {}
    enum BulkByProperties: APICategory & JiraSoftwereAPI {}
    enum ExistsByProperties: APICategory & JiraSoftwereAPI {}
    enum Flag: APICategory & JiraSoftwereAPI {}
    enum Pipelines: APICategory & JiraSoftwereAPI {}
}
