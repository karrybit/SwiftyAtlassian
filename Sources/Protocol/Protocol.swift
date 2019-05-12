//
//  Protocol.swift
//  SwiftyAtlassian
//
//  Created by Takumi Karibe on 2019/05/12.
//

import Foundation
import User

public protocol ServiceProtocol {
    var user: User { get }
    var header: [String: String] { get }
    init(withAuth user: User)
}

public extension ServiceProtocol {
    var header: [String: String] {
        var header: [String: String] = [:]
        header["Content-Type"] = "application/json"
        guard let credentialData = "\(user.name):\(user.password)".data(using: String.Encoding.utf8) else {
            fatalError("⛔️ failed to generate by user credential data.")
        }
        let credential = credentialData.base64EncodedString(options: [])
        header["Authorization"] = "Basic \(credential)"
        return header
    }
}
