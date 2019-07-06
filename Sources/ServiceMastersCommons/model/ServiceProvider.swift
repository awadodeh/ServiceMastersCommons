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
    public var department: Department?
    public var reviews: [Review]
    public var overview: String
    public var Services: [Service]
    public var address: Location

    public init( name: String, phoneNumber: String, bio: String, department: Department?, reviews: [Review], overview: String, Services: [Service], address: Location) {
        self.name = name
        self.phoneNumber = phoneNumber
        self.bio = bio
        self.department = department
        self.reviews = reviews
        self.overview = overview
        self.Services = Services
        self.address = address
    }
}