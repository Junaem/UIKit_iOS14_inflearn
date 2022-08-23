//: [Previous](@previous)

import UIKit

class MyInfo {
    
    // stored property
    var name = ""
    var age = 0
    
    //lazy stored property  처음에는 인스턴스화할 때 메모리에 올리지 않음
    lazy var myProfile = [UIImage(named: "a"), UIImage(named: "b"), UIImage(named: "c"), UIImage(named: "d")]
    
    // computed property
    var isAdult: Bool {
        return age > 19
    }
    // email -> 암호화된 값으로만 사용할 때
    var _email = ""
    var email: String {
        get {
            return _email
        }
        set {
            _email = newValue.hash.description
        }
    }
    
}

let myInfo = MyInfo()

myInfo.age = 20
myInfo.name = "kim"
print(myInfo.age)
print(myInfo.myProfile) // 이렇게 접근하는 순간 메모리에 올라옴
print(myInfo.isAdult)

myInfo.email = "DF"
print(myInfo.email)


// Initializer

class MyInfo2 {
    var name: String
    var myId: String
    // 값이 없어도 되면 String? 이런식으로 옵셔널로 하면 init에 세팅 안할 수 있음
    var age = 0
    var isAdult: Bool
    
    // designated initializer (기본적으로 다 쓰는거)
    init(name:String, myId:String) {
        self.name = name
        self.myId = myId
        self.isAdult = (age > 19)
    }
//
//    init() {
//        self.name = "Unknown"
//        self.myId = "0"
//    }
//
//    init(id:String) {
//        self.name = "Unknown"
//        self.myId = id
//    }
    
    // convenience initializer - 필수조건 - 다른 init을 반드시 실행해야 한다.
    convenience init() {
        self.init(name: "", myId: "")
    }
    
    convenience init(id:String) {
        self.init(name: "", myId: id)
    }
}

let myInfo1 = MyInfo2(name: "hi", myId: "124")
print(myInfo1.myId)

let myInfo2 = MyInfo2()
print(myInfo2.name)


struct MyConfig {   // 스트럭쳐는 init이 자동으로 됨
    var conf: String
}

var myCon = MyConfig(conf: "content")


// Deinitialization - 메모리 해제

var a: Int? = 10
a = nil // 해제됨

class Game {
    var score = 0
    var name = ""
    var round: Round?
    
    init(){
        print("game inited")
    }
    deinit {
        print("game deinited")
    }
}

class Round {
    weak var gameInfo: Game?    // weak 참조가 되면 Game이 없어질 때 참조도 같이 사라짐(참조 카운트를 올리지 않음)
    var lastRound = 10
    var roundTime = 20
    deinit {
        print("round deinited")
    }
}

var game: Game? = Game()
//var game2: Game? = game
var round: Round? = Round()
game?.round = round
round?.gameInfo = game


game = nil // 해제가 안된다.
//game2 = nil // 두개가 참조하고 있으면 round(상호참조)없어도 둘 다 nil이 돼야 해제가 된다.
round = nil
