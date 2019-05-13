//
//  JiraSoftwere.swift
//  SwiftyAtlassian
//
//  Created by Takumi Karibe on 2019/05/13.
//

import Foundation

public protocol JiraSoftwereAPI {}

public extension Atlassian.JiraSoftware {
    struct Backlog: APICategory & JiraSoftwereAPI {}
    struct Board:   APICategory & JiraSoftwereAPI {}
    struct Epic:    APICategory & JiraSoftwereAPI {}
    struct Issue:   APICategory & JiraSoftwereAPI {}
    struct Sprint:  APICategory & JiraSoftwereAPI {}
}

public extension Atlassian.JiraSoftware where Infrastructure == Cloud {
    struct Bulk:                  APICategory & JiraSoftwereAPI {}
    struct BulkRepository:        APICategory & JiraSoftwereAPI {}
    struct BulkByProperties:      APICategory & JiraSoftwereAPI {}
    struct ExistsByProperties:    APICategory & JiraSoftwereAPI {}
    struct Flag:                  APICategory & JiraSoftwereAPI {}
    struct Pipelines:             APICategory & JiraSoftwereAPI {}
}
