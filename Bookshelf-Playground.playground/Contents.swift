//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


class Books {
    
    var title: String
    var author: String
    var genre: String
    
    init(title: String, author: String, genre: String) {
        
        self.title = title
        self.author = author
        self.genre = genre
    }
}

class Bookshelf {
    
    var booksArray: [Books] = [
        Books(title: "The Hard Thing About Hard Things", author: "Anthony Horowitz", genre: "Business"),
        Books(title: "The One Thing", author: "jksgihgr", genre: "Business"),
        Books(title: "Big Nerd Ranch Swift", author: "Big Nerd Ranch", genre: "Programming")
        
        ]
}

func addBook(book: Bookshelf) {
    
    book.booksArray.append(Books.init(title: "4 Hour Wrk Wk", author: "Tim Ferriss", genre: "Self Improvment"))
}

func removeBook(book: Bookshelf) {
    
    book.booksArray.removeAtIndex(2)
}




/// class BookController {

// static let instance = BookController()