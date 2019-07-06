//
// Created by Awad Owda on 2019-07-02.
//

import CouchDB

public struct Department: Document {

    public var _id: String?
    public var _rev: String?
    public let name: String

    public init(name: String) {
        self.name = name
    }
}