//: Playground - noun: a place where people can play

import UIKit

func rank(x:Int, inlist list:Array<Int>)->Int{
    var rank = -1;
    for var k=0; k<x&&k<list.endIndex; k++ {
        if list[k] == x{
            rank = k
        }
    }
    return rank;
}



var a_1 = [
    0,
    1,
    3,
    4,
    6,
    8,
    9,
    12,
    15,
    16,
    17,
    19,
    2855
]


rank(6,inlist: a_1)


rank(15,inlist: a_1)
rank(10,inlist: a_1)
rank(19,inlist: a_1)
rank(8,inlist: a_1)
rank(2855,inlist: a_1)


var a_2 = [
    5,
    8,
    10,
    11,
    13,
    18,
    21,
    25,
    27,
    32,
    33,
    42,
    45,
    50,
    60,
    70,
    80,
    90,
    91
]
    
rank(91, inlist: a_2)
rank (6, inlist:a_1)
rank(231, inlist:a_2)
rank(1000, inlist:a_2)
rank(23, inlist:a_2)
rank(70, inlist:a_2)
rank(33, inlist:a_2)
rank(18, inlist:a_2)









