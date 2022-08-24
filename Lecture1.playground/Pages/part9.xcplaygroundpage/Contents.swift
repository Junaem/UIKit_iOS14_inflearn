import UIKit


// Higher order function - 고차함수

// map
let names = ["kim", "lee", "min", "john"]

let names2 = names.map { $0 + "님"}

let names3 = names.map { name in
    name.count
}

//filter
let filterNames = names.filter { (name) -> Bool in
    name.count > 3
}

// reduce
let reduceName = names.reduce("") { (first, second) in
    return first + " " + second
}

let numberArr = [1, 2, 3, 4, 5]
let sumNums = numberArr.reduce(0) { $0 + $1 }
sumNums
let numberArr2 = [1, 2, 3, 4, 5, nil, 6, nil, 8]
let sumNums2 = numberArr2.reduce(0) { $0 + ($1 ?? 0) }
sumNums2

// compactMap - nil 없애줌
let compactArr = numberArr2.compactMap { $0 }

// flatMap - 다중 배열에서 한 단계 꺼냄
let numbers2 = [[1, 2, 3], [4, 5, 6]]
let flatNums = numbers2.flatMap { $0 }
flatNums
