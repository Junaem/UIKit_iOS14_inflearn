//: [Previous](@previous)

import UIKit

// Enumerations

// 분류만 하고 싶다.
enum BookType {
    case fiction(title: String, price: Int, year: Int)
    case comics(title: String, price: Int, year: Int)
    case workbook(title: String, price: Int, year: Int)
}

extension BookType {
    var typeName: String {
        switch self {
        case .comics:
            return "comics"
        case .fiction:
            return "fiction"
        case .workbook:
            return "workbook"
        }
    }
}


var bookStyle: BookType?
var books = [BookType]()

func saveBook(book: BookType) {
    books.append(book)
}

saveBook(book: .comics(title: "aaa", price: 5000, year: 2020))
saveBook(book: .comics(title: "bbb", price: 6000, year: 2021))
saveBook(book: .comics(title: "ccc", price: 7000, year: 2010))
saveBook(book: .workbook(title: "ddd", price: 7000, year: 2010))
saveBook(book: .fiction(title: "eee", price: 4000, year: 2020))
saveBook(book: .fiction(title: "fff", price: 8000, year: 2015))

books

//func loadBook(book: BookType) -> [BookType] {
//    var tempBooks = [BookType]()
//
//    for item in books {
//        if item == book {
//            tempBooks.append(item)
//        }
//    }
//    return tempBooks
//}

for book in books {
    
    if case let BookType.comics(title, _, _) = book {
        print(title, book.typeName)
    }
    
//    switch book {
//    case let .comics(_, price, _):
//        print(price)
//    case let .fiction(title, _, _):
//        print(title)
//    default:
//        break
//    }
}
