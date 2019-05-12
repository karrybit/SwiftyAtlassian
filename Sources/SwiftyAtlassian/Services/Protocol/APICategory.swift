//
//  APICategory.swift
//  SwiftyAtlassian
//
//  Created by Takumi Karibe on 2019/05/12.
//

import Foundation

public protocol APICategory {
    static var path: String { get }
}

// TODO: for not implement feature
public extension APICategory {
    static var path: String { return "" }
}
