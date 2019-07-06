//
// Created by Awad Owda on 2019-07-02.
//

import CouchDB

public struct ServiceProvider: Document {

    public var _id: String?
    public var _rev: String?
    public let name: String
    public let phoneNumber: String
    public let bio: String
    public let location: Location
    public var department: Department?
    public var reviews: Set<Reviews>
    public var overview: String
    public var Services: Set<Service>
    public var address: Location

    public init(_id: String?, _rev: String?, name: String, phoneNumber: String, bio: String, location: Location, department: Department?, reviews: Set<Reviews>, overview: String, Services: Set<Service>, address: Location) {
        self._id = _id
        self._rev = _rev
        self.name = name
        self.phoneNumber = phoneNumber
        self.bio = bio
        self.location = location
        self.department = department
        self.reviews = reviews
        self.overview = overview
        self.Services = Services
        self.address = address
    }
}