//
//  main.swift
//  backjunTest
//
//  Created by soyoung kim on 2023/11/05.
//

import Foundation

//10430번 문제 풀이
//let arr = readLine()!.split(separator: " ").map{Int(String($0))!}
//
////print("\(arr)" + ", " + "\(type(of: arr))")
//
//let A = arr[0]
//let B = arr[1]
//let C = arr[2]
//
//if(2...10000 ~= A && 2...10000 ~= B && 2...10000 ~= C){
//    print ((A+B)%C)
//    print (((A%C) + (B%C))%C)
//    print ((A*B)%C)
//    print (((A%C) * (B%C))%C)
//}

//2588번
//
//let num1 = Int(readLine()!)!
//let num2 = Int(readLine()!)!
//
//print((num2%10) * num1)
//print(num2%100/10 * num1)
//print(num2/100 * num1)
//print(num1*num2)


//11382번
//let arr = readLine()!.split(separator: " ").map{Int(String($0))!}
//
//print(arr[0] + arr[1] + arr[2])

//10171번
//print("\\    /\\")
//print(" )  ( ')")
//print("(  /  )")
//print(" \\(__)|")

//13330번
//let arr = readLine()!.split(separator: " ").map{Int(String($0))!}
//
//if(arr[0] > arr[1]){
//    print(">")
//}else if(arr[0] < arr[1]){
//    print("<")
//}else if(arr[0] == arr[1]){
//    print("==")
//}


//9498번
//let num = Int(readLine()!)!
//
//switch num {
//    
//    case 90...100:
//        print("A")
//        break
//    case 80...89:
//        print("B")
//        break
//    case 70...79:
//        print("C")
//        break
//    case 60...69:
//        print("D")
//        break
//    default :
//        print("F")
//        break
//}

//2753번
//let num = Int(readLine()!)!
//
////윤년은 연도가 4의 배수이면서, 100의 배수가 아닐 때 또는 400의 배수일 때
//
//if( ( num%4==0 && num%100 != 0) || num % 400 == 0 ){
//    print(1)
//}else{
//    print(0)
//}

//14681번

//let numX = Int(readLine()!)!
//let numY = Int(readLine()!)!
//
//if(numX > 0 && numY > 0){ //모두 양수일 경우
//    print(1)
//}else if(numX < 0 && numY > 0){
//    print(2)
//}else if(numX < 0 && numY < 0){
//    print(3)
//}else{
//    print(4)
//}

//2884번
//let arr = readLine()!.split(separator: " ").map{Int(String($0))!}
//
//var hour = arr[0]
//var minute = arr[1]
//
//minute = minute - 45
//
//if(minute < 0){
//    minute = minute + 60
//    hour = hour - 1
//}
//if(hour < 0){
//    hour = 23
//}
//
//print("\(hour) \(minute)")

//2525번
//let arr = readLine()!.split(separator: " ").map{Int(String($0))!}
//let arr2 = Int(readLine()!)!
//
//var currentHour = arr[0]
//var currentMinute = arr[1]
//
//var endHour = 0
//var endMinnute = 0
//var addHour = 0
//
//currentMinute = currentMinute + arr2
//
//if currentMinute > 59 {
//    endMinnute = currentMinute % 60 //오븐구이가 끝나는 분
//    addHour = currentMinute / 60 //오븐구이로 구해진 시간
//    endHour = addHour + currentHour //오븐구이 시간 + 현재 시간
//}else{
//    endMinnute = currentMinute
//}
//
//if endHour > 23 {
//    endHour = endHour % 24
//}else{
//    endHour = currentHour + addHour
//}
//
//print("\(endHour) \(endMinnute)")


//2480번
//let arr = readLine()!.split(separator: " ").map{Int(String($0))!}
//
//var firDice = arr[0]
//var secDice = arr[1]
//var thiDice = arr[2]
//var reward = 0
//var sameNum = 0
//var sortArr: [Int] = []
//
////같은 눈이 3개가 나오면 10,000원+(같은 눈)×1,000원의 상금을 받게 된다.
////if firDice == secDice && secDice == thiDice {
//if (arr.filter { $0 == firDice }.count == 3) {
//    reward = 10000 + firDice * 1000
//}else if(firDice == secDice && firDice != thiDice){
//    reward = 1000 + firDice * 100
//}else if(secDice == firDice && secDice != thiDice){
//    reward = 1000 + secDice * 100
//}else if(thiDice == firDice && thiDice != secDice){ //같은 눈이 2개만 나오는 경우에는 1,000원+(같은 눈)×100원의 상금을 받게 된다.
//    reward = 1000 + thiDice * 100
//}else if(secDice == thiDice && secDice != firDice){
//    reward = 1000 + thiDice * 100
//    //모두 다른 눈이 나오는 경우에는 (그 중 가장 큰 눈)×100원의 상금을 받게 된다.
//}else if(arr.filter { $0 == firDice }.count == 1 && arr.filter { $0 == secDice }.count == 1 && arr.filter { $0 == thiDice }.count == 1 ){
//    sortArr = arr.sorted(by: >)
//    reward = sortArr[0] * 100
//}
//
//print(reward)

//코드 줄여서 짰을 경우
let arr = readLine()!.split(separator: " ").compactMap{Int(String($0))!}
//Dictionary(grouping:by:) 및 mapValues를 사용하여 각 숫자의 출현 횟수를 세어봅니다.
let occurrences = Dictionary(grouping: arr, by: { $0 }).mapValues { $0.count }

if occurrences.values.contains(3) {
    let num = occurrences.first { $0.value == 3 }!.key
    print(10000 + num * 1000)
} else if occurrences.values.contains(2) {
    let num = occurrences.first { $0.value == 2 }!.key
    print(1000 + num * 100)
} else {
    let maxNum = arr.max()!
    print(maxNum * 100)
}
