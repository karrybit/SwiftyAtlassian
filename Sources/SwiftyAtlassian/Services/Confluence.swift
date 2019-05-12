//
//  Confluence.swift
//  SwiftyAtlassian
//
//  Created by Takumi Karibe on 2019/05/12.
//

import Foundation

public extension Atlassian {
    struct Confluence<Category: APICategory & ConfluenceAPI>: ServiceProtocol {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
}

public protocol ConfluenceAPI {}
public extension Atlassian.Confluence {
    enum AccessMode:                APICategory & ConfluenceAPI {}
    enum Audit:                     APICategory & ConfluenceAPI {}
    enum Content:                   APICategory & ConfluenceAPI {}
    enum ContentChild:              APICategory & ConfluenceAPI {}
    enum ContentChildAttachment:    APICategory & ConfluenceAPI {}
    enum ContentDescendant:         APICategory & ConfluenceAPI {}
    enum ContentLabel:              APICategory & ConfluenceAPI {}
    enum ContentProperty:           APICategory & ConfluenceAPI {}
    enum ContentRestriction:        APICategory & ConfluenceAPI {}
    enum ContentBlueprint:          APICategory & ConfluenceAPI {}
    enum ContentBodyConvert:        APICategory & ConfluenceAPI {}
    enum Group:                     APICategory & ConfluenceAPI {}
    enum LongTask:                  APICategory & ConfluenceAPI {}
    enum Search:                    APICategory & ConfluenceAPI {}
    enum Space:                     APICategory & ConfluenceAPI {}
    enum SpaceProperty:             APICategory & ConfluenceAPI {}
    enum User:                      APICategory & ConfluenceAPI {}
    enum UserWatch:                 APICategory & ConfluenceAPI {}
}
