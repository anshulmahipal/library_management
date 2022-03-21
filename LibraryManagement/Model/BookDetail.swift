//
//  BookDetail.swift
//  LibraryManagement
//
//  Created by yogesh on 14/03/22.
//

import Foundation


class BookDetail {
    
    var bookName: String
    var authorName: String
    var issueDate: String
    var reutrnDate: String
    var issuerName: String
    
    init(bookName: String, authorName: String, issueDate: String, returnData: String, issuerName: String) {
        self.bookName = bookName
        self.authorName = authorName
        self.issueDate = issueDate
        self.reutrnDate = returnData
        self.issuerName = issuerName
    }
}
