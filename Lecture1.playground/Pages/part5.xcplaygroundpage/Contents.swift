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



// Class

class MyInfo {
    enum GenderType {
        case male
        case female
    }
    
    init(gender: GenderType) {
        self.gender = gender
    }
    
    private var gender: GenderType
    var name = ""
    var age = 0
    
    func isAdult() -> Bool {
        if age > 19 {
            return true
        }
        return false
    }
}

var myInfo = MyInfo(gender: .male)
var myInfo2 = myInfo
myInfo2.age = 4
myInfo.age


class GameInfo {
    var homeScore = 0
    var awayScore = 0
    // final func로 바꾸면 override 불가능
    func presentScore() -> String {
        return homeScore.description + " : " + awayScore.description
    }
}

class Soccer: GameInfo {
    var time = 0
}

class Baseball: GameInfo {
    override func presentScore() -> String {
        return homeScore.description + " 대 " + awayScore.description
    }
    var round = 0
}

class Football: GameInfo {
}

let soccer = Soccer()
soccer.homeScore = 2
soccer.awayScore = 1
soccer.presentScore()

let baseball = Baseball()
baseball.homeScore = 4
baseball.awayScore = 5
baseball.round = 4
print(baseball.presentScore())
