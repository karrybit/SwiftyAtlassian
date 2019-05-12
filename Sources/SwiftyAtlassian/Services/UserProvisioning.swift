//
//  UserProvisioning.swift
//  SwiftyAtlassian
//
//  Created by Takumi Karibe on 2019/05/12.
//

import Foundation

public extension Atlassian where Infrastructure == Cloud {
    enum UserProvisioningAPICategory {}
    struct UserProvisioning<Category: APICategory & UserProvisioningAPI>: ServiceProtocol {
        public let config: Config
        public init(withAuth config: Config) { self.config = config }
    }
}

public protocol UserProvisioningAPI {}
public extension Atlassian.UserProvisioningAPICategory {}
