//
//  Bitbucket.swift
//  SwiftyAtlassian
//
//  Created by Takumi Karibe on 2019/05/12.
//

import Foundation

public extension Atlassian {
    enum BitbucketAPICategory {}
    struct Bitbucket<Category: APICategory & BitbucketAPI>: ServiceProtocol {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
}

public protocol BitbucketAPI {}
public extension Atlassian.BitbucketAPICategory {}
public extension Atlassian.BitbucketAPICategory where Infrastructure == Server {}
public extension Atlassian.BitbucketAPICategory where Infrastructure == Cloud {}
