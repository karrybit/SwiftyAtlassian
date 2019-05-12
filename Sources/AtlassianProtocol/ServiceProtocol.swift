//
//  ServiceProtocol.swift
//  SwiftyAtlassian
//
//  Created by Takumi Karibe on 2019/05/12.
//

import Foundation
import Config

public protocol ServiceProtocol {
    var config: Config { get }
    var header: [String: String] { get }
    init(withAuth config: Config)
}

public extension ServiceProtocol {
    var header: [String: String] {
        var header: [String: String] = [:]
        header["Content-Type"] = "application/json"
        guard let credentialData = "\(config.name):\(config.password)".data(using: String.Encoding.utf8) else {
            fatalError("⛔️ failed to generate by user credential data.")
        }
        let credential = credentialData.base64EncodedString(options: [])
        header["Authorization"] = "Basic \(credential)"
        return header
    }
}
