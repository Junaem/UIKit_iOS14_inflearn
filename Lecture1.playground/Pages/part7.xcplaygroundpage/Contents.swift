import UIKit
import Foundation


// Structure 구조체

// class와 달리 value type임, 상속 안됨 -> 독립적으로 작동해야할 때 사용
struct ImageType {
    var type = "none"
}

var imageType = ImageType()
var imageType2 = imageType
imageType.type = "jpg"
imageType2.type = "png"
print(imageType.type, imageType2.type)


class MyInfo {
    var myAge = 0
}

var info1 = MyInfo()
var info2 = info1
var info3 = info2

info1.myAge = 3
info2.myAge
info2.myAge = 10
info1.myAge


// Extension - 기능 확장
// struct, class, enum, protocol 등에서

// 숫자(int) 짝수, 홀수

extension Int {
    var oddOrEven: String {
        if self % 2 == 0 {
                return "짝수"
        }
        return "홀수"
    }
}

3.oddOrEven
524.oddOrEven


// UIColor
// mainColor1 = xxx
// mainColor2 = xxx
// subColor = xxx

extension UIColor {
    // class 변수로 만들면 인스턴스화 시킬 필요 없음(static도 있고 비슷한데 좀 다르다함)
    class var mainColor1: UIColor {
        UIColor(red: 120/255, green: 70/255, blue: 120/255, alpha: 1)
    }
}

var button = UIButton()
button.titleLabel?.textColor = .mainColor1
button.titleLabel?.textColor = UIColor.orange


// protocol - 규약, 규격, 규칙: 인터페이스 느낌

protocol UserInfo {
    var name: String { get set }    // get은 무조건, set은 선택가능
    var age: Int { get set }    // 구현은 하면 안 됨
    
    func isAdult() -> Bool  // 역시 구현 X
}

protocol UserScore {
    var score: Int {get set}
}

protocol UserDetailInfo: UserInfo, UserScore{
    
}

extension UserInfo {        // extension을 사용하면 protocol에서도 내용 구현 가능
    func isAdult() -> Bool {
        return age > 19
    }
}

class Guest: UserDetailInfo {
    var score: Int = 0
    
    var name: String = "kim"
    var age: Int = 0
    var height = 180
}

class Member: UserInfo {
    var name: String
    var age: Int
    
    
    init(name:String, age: Int) {
        self.name = name
        self.age = age
    }
}

class VIPMember: UserInfo {
    var name: String = "lee"
    var age: Int = 10
    func isAdult() -> Bool {    // 실제 구현해놓으면 extension무시하고 구현한 걸로 사용
        return true
    }
}

class UserInfoPresenter {
    func present() {
        let guest = Guest()
        let member = Member(name: "jane", age: 25)
        let vip = VIPMember()
        
        let members: [UserInfo] = [guest, member, vip]
        
        for m in members {
            print(m.name, m.isAdult())
        }
    }
}

let presenter = UserInfoPresenter()
presenter.present()
