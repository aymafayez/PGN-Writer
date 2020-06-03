//
//  Tags.swift
//  PGN-Writer
//
//  Created by A.F on 6/3/20.
//  Copyright © 2020 A.F. All rights reserved.
//

import Foundation

 enum Tag: String {
    case Event
    case Site
    case Date
    case Round
    case White
    case Black
    case Result
}

protocol Taggable {
     var  tag: Tag {get}
     func getTag() -> String
}

extension Taggable {
    var startTag: String {
        return "["
    }
    var endTag: String {
        return "]"
    }
    var space: String {
        return " "
    }
    var doubleQuotation: String {
        return "\""
    }
}
