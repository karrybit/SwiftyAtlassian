//
//  SwiftyAtlassian.swift
//  SwiftyAtlassian
//
//  Created by Takumi Karibe on 2019/05/11.
//

import Foundation

public protocol InfrastructureProtocol {}
public enum Server: InfrastructureProtocol {}
public enum Cloud: InfrastructureProtocol {}

public struct Atlassian<Infrastructure: InfrastructureProtocol> {}
