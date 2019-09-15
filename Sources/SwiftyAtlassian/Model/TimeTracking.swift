import Foundation

public extension Model {
    struct TimeTracking: Decodable {
        public let originalEstimateSeconds: Int
        public let remainingEstimateSeconds: Int
        public let timeSpentSeconds: Int
    }
}
