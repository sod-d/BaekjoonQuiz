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
let arr = readLine()!.split(separator: " ").map{Int(String($0))!}
let arr2 = Int(readLine()!)!

var currentHour = arr[0]
var currentMinute = arr[1]

currentMinute = currentMinute + arr2

print("\(currentHour) \(currentMinute) \(arr2)")
