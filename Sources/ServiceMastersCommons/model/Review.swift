//
// Created by Awad Owda on 2019-07-05.
//

import Foundation
import CouchDB

public struct Review: Document {

    public var _id: String?
    public var _rev: String?
    public var reviewId: String
    public var description: String
    public let rank: String
    public let date: Date

    public init(reviewId: String, description: String, rank: String, date: Date) {
        self.reviewId = reviewId
        self.description = description
        self.rank = rank
        self.date = date
    }

    public static func ==(lhs: Review, rhs: Review) -> Bool {
        if lhs._id == rhs._id && lhs._rev == rhs._rev && lhs.reviewId == rhs.reviewId {
            return true
        }
        return false
    }
}

extension Review: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(reviewId)
    }
}