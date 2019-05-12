//
//  UserManagement.swift
//  SwiftyAtlassian
//
//  Created by Takumi Karibe on 2019/05/12.
//

import Foundation

public extension Atlassian where Infrastructure == Cloud {
    enum UserManagementAPICategory {}
    struct UserManagement<Category: APICategory & UserManagementAPI>: ServiceProtocol {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
}

public protocol UserManagementAPI {}
public extension Atlassian.UserManagementAPICategory {}
