import CouchDB

public struct Service: Codable, Document {
    public var _id: String?
    public var _rev: String?
    public let name: String
    public let number: String

    public init(name: String, number: String) {
        self.name = name
        self.number = number
    }
}
