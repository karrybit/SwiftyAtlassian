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
    enum AccessMode: ConfluenceAPI {}
    enum Audit: ConfluenceAPI {}
    enum Content: ConfluenceAPI {}
    enum ContentChild: ConfluenceAPI {}
    enum ContentChildAttachment: ConfluenceAPI {}
    enum ContentDescendant: ConfluenceAPI {}
    enum ContentLabel: ConfluenceAPI {}
    enum ContentProperty: ConfluenceAPI {}
    enum ContentRestriction: ConfluenceAPI {}
    enum ContentBlueprint: ConfluenceAPI {}
    enum ContentBodyConvert: ConfluenceAPI {}
    enum Group: ConfluenceAPI {}
    enum LongTask: ConfluenceAPI {}
    enum Search: ConfluenceAPI {}
    enum Space: ConfluenceAPI {}
    enum SpaceProperty: ConfluenceAPI {}
    enum User: ConfluenceAPI {}
    enum UserWatch: ConfluenceAPI {}
}
