import UIKit

// Array
var myNames = Array<String>()
var myAges = [Int]()
myNames.append("kin")
myNames.append("lee")
myNames.append("jin")
myNames[0]
myNames.count
myNames.append(contentsOf: ["hi", "hello"]) // 어레이를 추가
var myNamesP = myNames + ["hi", "hello"]

myNames.count
print(myNames)
myNames.remove(at: 2)
print(myNames)
myNames.removeLast()
if myNames.isEmpty {
    myNames.append("ㅠㅠ")
}
myNames.insert("start", at: 0)

for name in myNames {
    print(name+"님")
}

for (idx, name) in myNames.enumerated() {
    print(idx, name)
}

// Set
var nameSet = Set<String>()
nameSet.insert("kim")
nameSet.insert("min")
nameSet.insert("lee")
nameSet.insert("lee") // 안들어감, 에러는 안남
var duplNames = ["lee", "lee", "lee"]
Set(duplNames)

var numSet1: Set = [1, 2, 3, 4, 5]
var numSet2: Set = [4, 5, 6, 7, 8]
numSet1.intersection(numSet2)
numSet1.union(numSet2)
numSet1.symmetricDifference(numSet2)
numSet1.subtracting(numSet2) // 여집합을 반환
//numSet1.subtract(numSet2) // 여집합을 반환만 하는게 아니고 set에서 빼버림

// Dictionary
var namesOfStreet = [String: Any]()
var namesOfStreet2 = ["a": 1, "b": 2, "c": 3]
namesOfStreet["302ro"] = "1st St"
namesOfStreet["303ro"] = "2nd St"
namesOfStreet["304ro"] = 3
namesOfStreet["303333"] // 에러나지않고 nil을 반환
namesOfStreet["303ro"] = nil // 밸류값으로 nil을 받는게 아니고 키값이 삭제됨
namesOfStreet.keys

for (key, val) in namesOfStreet {
    print(key, val)
}
