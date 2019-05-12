//
//  Organizations.swift
//  SwiftyAtlassian
//
//  Created by Takumi Karibe on 2019/05/12.
//

import Foundation

public extension Atlassian where Infrastructure == Cloud {
    enum OrganizationsAPICategory {}
    struct Organizations<Category: APICategory & OrganizationsAPI>: ServiceProtocol {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }    
}

public protocol OrganizationsAPI {}
public extension Atlassian.OrganizationsAPICategory {}
