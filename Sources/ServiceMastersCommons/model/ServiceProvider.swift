//
// Created by Awad Owda on 2019-07-02.
//

import Foundation
import CouchDB

public struct ServiceProvider: Document {

    public var _id: String?
    public var _rev: String?
    public let serviceProviderId: String
    public let name: String
    public let phoneNumber: String
    public let bio: String
    public var department: Department?
    public var reviews: [Review]
    public var overview: String
    public var Services: Set<Service>
    public var address: Location

    public init( id: String, name: String, phoneNumber: String, bio: String, department: Department?, reviews: [Review], overview: String, Services: Set<Service>, address: Location) {
        self.serviceProviderId = id
        self.name = name
        self.phoneNumber = phoneNumber
        self.bio = bio
        self.department = department
        self.reviews = reviews
        self.overview = overview
        self.Services = Services
        self.address = address
    }
    
    public static func ==(lhs: ServiceProvider, rhs: ServiceProvider) -> Bool {
        if lhs._id == rhs._id && lhs._rev == rhs._rev && lhs.serviceProviderId == rhs.serviceProviderId {
            return true
        }
        return false
    }
}

extension ServiceProvider: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(serviceProviderId)
    }
}
