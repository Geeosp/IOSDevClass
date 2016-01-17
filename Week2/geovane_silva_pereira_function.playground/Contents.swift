// Playground - noun: a place where people can play

import UIKit

// Program 5.6

class Fraction {
    var numerator: Int = 0
    var denominator: Int = 1
    
    init(_ numerator: Int, over denominator: Int) {
        self.numerator = numerator
        self.denominator = denominator
        reduce();
    }
    
    init() {}
    
    func setTo(numerator: Int, over denominator: Int) {
        self.numerator = numerator
        self.denominator = denominator
    }
    
    func printFraction() {
        print( "\(numerator)/\(denominator)" )
    }
    func toString()->String {
        return ( "(numerator)/(denominator)" )
    }
    
    func toDouble() -> Double {
        return Double(numerator) / Double(denominator);
    }
    
    func add(f: Fraction) {
        numerator = numerator * f.denominator + denominator * f.numerator;
        denominator = denominator * f.denominator;
        reduce()
    }
    
    func reduce() {
        let sign = numerator >= 0 ? 1 : -1
        var u = numerator * sign
        var v = denominator
        var r: Int
        while (v != 0) {
            r = u % v; u = v; v = r
        }
        numerator /= u
        denominator /= u
    }
    func sub(f:Fraction){
        numerator = numerator * f.denominator - denominator * f.numerator;
        denominator = denominator * f.denominator;
        reduce()
    }
    func mult(f:Fraction){
        numerator = numerator * f.numerator
        denominator = denominator * f.denominator;
        reduce()
    }
    func div(f:Fraction){
        numerator = numerator*f.denominator;
        denominator=denominator*f.numerator
    }
}

func printFraction( f:Fraction) {
    print( "\(f.numerator)/\(f.denominator)" )
}
var f1a = Fraction(1, over: 2)
var f1b = Fraction(1, over: 2)
var f1c = Fraction(1, over: 2)
var f1d = Fraction(1, over: 2)

var f2 = Fraction(1, over: 4)
var f3 = Fraction(3, over:8)
var f4 = Fraction(9, over:16)
var f5 = Fraction(4,over: 9)

f1a.add(f2);
printFraction(f1a)
f1b.sub(f3)
printFraction(f1b)
f1c.mult(f4)
printFraction(f1c)
f1d.div(f4)
printFraction(f1d)