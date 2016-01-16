//: Playground - noun: a place where people can play

import UIKit

infix operator <- { associativity left }

func <- <T,R>(lhs: (R -> T) -> T, rhs: R -> T) -> T {
    
    return lhs(rhs)
    
}

func <- <T,R>(lhs: R -> T, rhs: R) -> T {
    
    return lhs(rhs)
    
}

var first: (Void -> Any) -> Any = {
    
    return $0()
    
}

var second: Void -> Any = {
    
    return "boom"
    
}

first <- second

