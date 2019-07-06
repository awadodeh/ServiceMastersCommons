//
// Created by Awad Owda on 2019-07-05.
//

import CouchDB

public struct ServiceProvider: Document, CustomStringConvertible {

    public var _id: String?
    public var _rev: String?
    public let message: String
    public let date: Date

    public init(_id: String?, _rev: String?, message: String, date: Date) {
        self._id = _id
        self._rev = _rev
        self.message = message
        self.date = date
    }

    public var description: String {
        return "ServiceProvider(_id: \(_id), _rev: \(_rev), message: \(message), date: \(date))"
    }
}