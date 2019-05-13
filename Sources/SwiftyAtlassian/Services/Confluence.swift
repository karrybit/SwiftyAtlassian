//
//  Confluence.swift
//  SwiftyAtlassian
//
//  Created by Takumi Karibe on 2019/05/13.
//

import Foundation

public protocol ConfluenceAPI {}

public extension Atlassian.Confluence {
    struct AccessMode:    APICategory & ConfluenceAPI {}
    struct Audit:         APICategory & ConfluenceAPI {}
    struct Content:       APICategory & ConfluenceAPI {}
    struct ContentBody:   APICategory & ConfluenceAPI {}
    struct Group:         APICategory & ConfluenceAPI {}
    struct LongTask:      APICategory & ConfluenceAPI {}
    struct Search:        APICategory & ConfluenceAPI {}
    struct Space:         APICategory & ConfluenceAPI {}
    struct User:          APICategory & ConfluenceAPI {}
}

public extension Atlassian.Confluence where Infrastructure == Cloud {
    struct Experimental:  APICategory & ConfluenceAPI {}
    struct Relation:      APICategory & ConfluenceAPI {}
    struct Settings:      APICategory & ConfluenceAPI {}
    struct Template:      APICategory & ConfluenceAPI {}
}
