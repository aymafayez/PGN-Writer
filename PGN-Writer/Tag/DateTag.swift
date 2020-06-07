//
//  DateTag.swift
//  PGN-Writer
//
//  Created by A.F on 6/7/20.
//  Copyright © 2020 A.F. All rights reserved.
//

import Foundation

class DateTag: Taggable {

    
    var tag: Tag = .Date
    private var dateString: String
    private var dateFormat: String
    
    init(dateString: String , dateFormat: String) {
        self.dateString = dateString
        self.dateFormat = dateFormat
    }
    
    
    
    func getTag() -> String {
        let date = getDate(dateString: dateString, dateFormat: dateFormat) ?? "????.??.??"
        return getTag(tagKey: tag.rawValue, tagValue: date)
    }
    private func getDate(dateString: String, dateFormat: String) -> String? {
        let formatter = DateFormatter()
        formatter.dateFormat = dateFormat
        let date = formatter.date(from: dateString)
        formatter.dateFormat = "YYYY.MM.dd"
        if let date = date {
            return formatter.string(from: date)
        }
        return nil
    }
}
