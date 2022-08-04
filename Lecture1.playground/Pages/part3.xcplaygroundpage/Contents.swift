import UIKit

// Control Flow

//for
for ch in "12345d"{
    print((Int(String(ch)) ?? 9) * 10)
}

let numberOfLegs = ["ant" : 6, "dog" : 4]

for i in 0...5 {    // 0부터5까지
    print(i)
}
for i in 0..<5{ // 4까지
    print(i)
}

// while
var a = 0
while a < 10 {
    print(a)
    a += 1
}

// Switch
let b = 2
switch b {
case 1:
    print("1")
case 2...5:
    print("2 to 5")
default:
    print("other")
}

