//
// Created by Awad Owda on 2019-07-05.
//

import Foundation
import CouchDB

public struct User: Document {

    public var _id: String?
    public var _rev: String?
    public var userId: String
    public var firstName: String
    public var lastName: String
    public var phoneNumber: String
    public var address: Location
    //TODO: add reviews
    //TODO: add billing info

    public init(userId: String, firstName: String, lastName: String, phoneNumber: String, address: Location) {
        self.userId = userId
        self.firstName = firstName
        self.lastName = lastName
        self.phoneNumber = phoneNumber
        self.address = address
    }

    public static func ==(lhs: User, rhs: User) -> Bool {
        if lhs._id == rhs._id && lhs._rev == rhs._rev && lhs.userId == rhs.userId {
            return true
        }
        return false
    }
}

extension User: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(userId)
    }
}
