public struct Service: Codable {
    public let name: String
    public let number: String

    public init(name: String, number: String) {
        self.name = name
        self.number = number
    }
}
