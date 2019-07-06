//
// Created by Awad Owda on 2019-07-02.
//

import CouchDB

public struct Location: Document {
    public var _id: String?
    public var _rev: String?
    public let streetAddress: String
    public let postalCode: String
    public let city: String
    public let stateProvince: String

    public init(streetAddress: String, postalCode: String, city: String, stateProvince: String) {
        self.streetAddress = streetAddress
        self.postalCode = postalCode
        self.city = city
        self.stateProvince = stateProvince
    }
}
