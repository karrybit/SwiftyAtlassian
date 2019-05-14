//
//  JiraSoftwere.swift
//  SwiftyAtlassian
//
//  Created by Takumi Karibe on 2019/05/13.
//

import Foundation

public protocol JiraSoftwereAPI {}

public extension Atlassian.JiraSoftware {
    class Backlog: APICategory, JiraSoftwereAPI {}
    class Board: APICategory, JiraSoftwereAPI {}
    class Epic: APICategory, JiraSoftwereAPI {}
    class Issue: APICategory, JiraSoftwereAPI {}
    class Sprint: APICategory, JiraSoftwereAPI {}
}

public extension Atlassian.JiraSoftware where Infrastructure == Cloud {
    class Bulk: APICategory, JiraSoftwereAPI {}
    class BulkRepository: APICategory, JiraSoftwereAPI {}
    class BulkByProperties: APICategory, JiraSoftwereAPI {}
    class ExistsByProperties: APICategory, JiraSoftwereAPI {}
    class Flag: APICategory, JiraSoftwereAPI {}
    class Pipelines: APICategory, JiraSoftwereAPI {}
}
