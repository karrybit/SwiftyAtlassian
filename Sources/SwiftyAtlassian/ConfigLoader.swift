//
//  ConfigLoader.swift
//  SwiftyAtlassian
//
//  Created by takumi-karibe on 2019/09/11.
//

import Foundation
import Yams

public struct ConfigLoader {
    private init() {}
    public static func loadConfig() -> Config {
        return fetchConfig()
    }
}

private extension ConfigLoader {
    static var rootPath: String {
        return FileManager.default.currentDirectoryPath + "/.swifty_atlassian"
    }
    
    static var userConfigFileName: String {
        return "atlassian_config.yml"
    }
    
    static func fetchConfig() -> Config {
        let path = [rootPath, userConfigFileName].joined(separator: "/")
        let node = fetchConfigFile(at: path)
        
        /// parse user config
        guard let name = node["name"]?.string,
            !name.isEmpty,
            let password = node["password"]?.string,
            !password.isEmpty,
            let baseUrlString = node["base-url-string"]?.string,
            !baseUrlString.isEmpty else {
                fatalError("⛔️ couldn't load user config")
        }
        
        return Config(name: name, password: password, baseUrlString: baseUrlString)
    }
    
    static func fetchConfigFile(at filePath: String) -> Node {
        if !FileManager.default.fileExists(atPath: filePath) {
            fatalError("⛔️ config is not exist")
        }
        
        guard let configFile = FileManager.default.contents(atPath: filePath), let contents = String(data: configFile, encoding: .utf8) else {
            fatalError("⛔️ config is invalid")
        }
        
        guard let node = try? Yams.compose(yaml: contents) else {
            fatalError("⛔️ couldn't load config")
        }
        
        return node
    }
}
