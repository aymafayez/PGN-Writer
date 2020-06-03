//
//  EventTag.swift
//  PGN-Writer
//
//  Created by A.F on 6/3/20.
//  Copyright © 2020 A.F. All rights reserved.
//

import Foundation

class EventTag: Taggable{
    
    private var eventName: String?
    var tag: Tag = .Event
    
    init(eventName: String?) {
        self.eventName = eventName
    }
    
    func getTag() -> String {
        guard let eventName = self.eventName else { return "?"}
        if eventName == "" {return "?"}
        return startTag + tag.rawValue + space + doubleQuotation + eventName + doubleQuotation + endTag
    }
    
}
