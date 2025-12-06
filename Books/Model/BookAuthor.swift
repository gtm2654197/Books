//
//  File.swift
//  Books
//
//  Created by Taylor McClamroch on 12/6/25.
//

import Foundation

struct BookAuthor
{
    var book: String
    var author: String
    var imageName: String
        
    init(_ book: String, _ author: String, _ imageName: String)
    {
        self.book = book
        self.author = author
        self.imageName = imageName
    }
}
