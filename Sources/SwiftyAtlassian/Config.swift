import Foundation

var _config: Config?
public func setConfig(_ config: Config) {
    _config = config
}

public struct Config {
    public let name: String
    public let password: String
    public let baseUrlString: String
}
