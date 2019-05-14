//
//  JiraSoftwere.swift
//  SwiftyAtlassian
//
//  Created by Takumi Karibe on 2019/05/13.
//

import Foundation

public protocol JiraSoftwereAPI {}

public extension Atlassian.JiraSoftware {
    struct Backlog: APICategory & JiraSoftwereAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    struct Board: APICategory & JiraSoftwereAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    struct Epic: APICategory & JiraSoftwereAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    struct Issue: APICategory & JiraSoftwereAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    struct Sprint: APICategory & JiraSoftwereAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
}

public extension Atlassian.JiraSoftware where Infrastructure == Cloud {
    struct Bulk: APICategory & JiraSoftwereAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    struct BulkRepository: APICategory & JiraSoftwereAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    struct BulkByProperties: APICategory & JiraSoftwereAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    struct ExistsByProperties: APICategory & JiraSoftwereAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    struct Flag: APICategory & JiraSoftwereAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
    struct Pipelines: APICategory & JiraSoftwereAPI {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
}
