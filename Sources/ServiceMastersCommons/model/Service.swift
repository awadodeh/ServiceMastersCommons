import Foundation
import CouchDB

public struct Service: Document {
    public var _id: String?
    public var _rev: String?
    public var serviceId: String
    public var department: Department?
    public let name: String
    public let number: String

    public init(serviceId:String, name: String, number: String) {
        self.name = name
        self.number = number
        self.serviceId = serviceId
    }

    public static func ==(lhs: Service, rhs: Service) -> Bool {
        if lhs._id == rhs._id && lhs._rev == rhs._rev && lhs.serviceId == rhs.serviceId {
            return true
        }
        return false
    }
}

extension Service: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(serviceId)
    }
}
