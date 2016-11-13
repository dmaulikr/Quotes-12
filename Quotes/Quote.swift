//
//  Quote.swift
//  Quotes
//
//  Created by Marius Muntean on 13/11/16.
//  Copyright © 2016 Marius Muntean. All rights reserved.
//

import Foundation

struct Quote {
    let text: String
    let author : String
    
    static let all : [Quote] = [
        Quote(text: "Never put off until tomorrow what you can do the day after tomorrow", author: "Mark Twain"),
        Quote(text: "Efficiency is doing better what is already being done", author: "Peter Drucker"),
        Quote(text: "To infinity and beyond", author: "Buzz Lightyear"),
        Quote(text: "May the force be with you", author: "Han Solo"),
        Quote(text: "Simplicity is the ultimate sophistication", author: "Leonardo da Vinci"),
        Quote(text: "It's not just how it looks like and feels like. Design is also how it works", author: "Steve Jobs")
    ]
}

extension Quote : CustomStringConvertible {
    var description : String {
        return "\"\(text)\" - \(author)"
    }
}
