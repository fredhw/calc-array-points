//
//  main.swift
//  CalcArrayPoints
//
//  Created by Frederick Harrison Wijaya on 4/5/17.
//  Copyright © 2017 fredhw. All rights reserved.
//

import Foundation

func add(left : Int, right : Int) -> Int {
    return left + right
}

func subtract(left : Int, right: Int) -> Int {
    if (left > right) {
        return -1 * (right - left)
    } else {
        return left - right
    }
}

func multiply(left : Int, right: Int) -> Int {
    return left * right
}

func divide(left : Int, right: Int) -> Int {
    return left / right
}

func mathOperation(left : Int, right : Int, operation : (Int, Int) -> Int) -> Int {
    return operation(left, right)
}

func add(array : [Int]) -> Int {
    return array.reduce(0, { x, y in x + y })
}

func multiply(array : [Int]) -> Int {
    return array.reduce(1, { x, y in x * y })
}

func count(array : [Int]) -> Int {
    var count = 0
    for _ in array {
        count += 1
    }
    return count
}

func average(array : [Int]) -> Int {
    return add(array: array) / count(array: array)
}

func reduce(array: [Int], operation : ([Int]) -> Int) -> Int {
    return operation(array)
}

func add(p1 : (Int, Int), p2 : (Int, Int)) -> (Int, Int) {
    return (p1.0 + p2.0, p1.1 + p2.1)
}

func subtract(p1 : (Int, Int), p2 : (Int, Int)) -> (Int, Int) {
    return (p1.0 - p2.0, p1.1 - p2.1)
}

func add(p1 : [String : Int]!, p2 : [String : Int]!) -> [String : Int]! {
    if (p1 == nil || p2 == nil) {
        return nil
    }
    var p3 = [String: Int]()
    for (key, val) in p1 {
        p3[key] = val + p2[key]!
    }
    return p3
}

func add(p1 : [String : Double]!, p2 : [String : Double]!) -> [String : Double]! {
    if (p1 == nil || p2 == nil) {
        return nil
    }
    var p3 = [String: Double]()
    for (key, val) in p1 {
        p3[key] = val + p2[key]!
    }
    return p3
}

func subtract(p1 : [String : Int]!, p2 : [String : Int]!) -> [String : Int]! {
    if (p1 == nil || p2 == nil) {
        return nil
    }
    var p3 = [String: Int]()
    for (key, val) in p1 {
        let val2 : Int = p2[key]!
        if (val2 > val) {
            p3[key] =  -1 * (val2 - val)
        } else {
            p3[key] =  val - val2
        }
    }
    return p3
}

func subtract(p1 : [String : Double]!, p2 : [String : Double]!) -> [String : Double]! {
    if (p1 == nil || p2 == nil) {
        return nil
    }
    var p3 = [String: Double]()
    for (key, val) in p1 {
        let val2 : Double = p2[key]!
        if (val2 > val) {
            p3[key] =  -1 * (val2 - val)
        } else {
            p3[key] =  val - val2
        }
    }
    return p3
}
