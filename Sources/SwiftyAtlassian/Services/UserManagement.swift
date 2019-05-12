//
//  UserManagement.swift
//  SwiftyAtlassian
//
//  Created by Takumi Karibe on 2019/05/12.
//

import Foundation
import Config
import AtlassianProtocol
import UserManagement

public extension Atlassian where Infrastructure == Cloud {
    struct UserManagement<Category: APICategory & UserManagementAPI>: ServiceProtocol {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
}
