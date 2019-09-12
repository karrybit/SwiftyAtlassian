//
//  Confluence.swift
//  SwiftyAtlassian
//
//  Created by makanai5610 on 2019/09/12.
//

import Foundation

public protocol ConfluenceAPI {}

public extension Atlassian.Confluence {
    class AccessMode: API, ConfluenceAPI {}
    class Audit: API, ConfluenceAPI {}
    class Content: API, ConfluenceAPI {}
    class ContentBody: API, ConfluenceAPI {}
    class Group: API, ConfluenceAPI {}
    class LongTask: API, ConfluenceAPI {}
    class Search: API, ConfluenceAPI {}
    class Space: API, ConfluenceAPI {}
    class User: API, ConfluenceAPI {}
}

public extension Atlassian.Confluence where Infrastructure == Cloud {
    class Experimental: API, ConfluenceAPI {}
    class Relation: API, ConfluenceAPI {}
    class Settings: API, ConfluenceAPI {}
    class Template: API, ConfluenceAPI {}
}
