//
//  Bitbucket.swift
//  SwiftyAtlassian
//
//  Created by Takumi Karibe on 2019/05/12.
//

import Foundation

public extension Atlassian {
    struct Bitbucket<Category: APICategory & BitbucketAPI>: ServiceProtocol {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
}

public protocol BitbucketAPI {}
public extension Atlassian.Bitbucket {}
