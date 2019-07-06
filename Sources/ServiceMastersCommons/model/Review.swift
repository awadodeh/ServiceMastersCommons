//
// Created by Awad Owda on 2019-07-05.
//

import Foundation
import CouchDB

public struct Review: Document {

    public var _id: String?
    public var _rev: String?
    public var description: Department?
    public let rank: String
    public let date: Date

    public init( description: Department?, rank: String, date: Date) {
        self.description = description
        self.rank = rank
        self.date = date
    }

    public static func == (lhs: Review, rhs: Review) -> Bool {
        if lhs._id == rhs._id {
            return true
        }
        return false
    }
}
