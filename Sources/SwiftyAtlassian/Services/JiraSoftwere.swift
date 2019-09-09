//
//  JiraSoftwere.swift
//  SwiftyAtlassian
//
//  Created by Takumi Karibe on 2019/05/13.
//

import Foundation

public protocol JiraSoftwereAPI {}

public extension Atlassian.JiraSoftware {
    
    static var servicePath: String {
        return "rest/agile/latest/"
    }
    
    class Backlog: API, JiraSoftwereAPI {}
    class Board: API, JiraSoftwereAPI {}
    class Epic: API, JiraSoftwereAPI {}
    class Issue: API, JiraSoftwereAPI {}
    class Sprint: API, JiraSoftwereAPI {}
}

public extension Atlassian.JiraSoftware where Infrastructure == Cloud {
    class Bulk: API, JiraSoftwereAPI {}
    class BulkRepository: API, JiraSoftwereAPI {}
    class BulkByProperties: API, JiraSoftwereAPI {}
    class ExistsByProperties: API, JiraSoftwereAPI {}
    class Flag: API, JiraSoftwereAPI {}
    class Pipelines: API, JiraSoftwereAPI {}
}
