import UIKit

//Counting bits
// Given a non negative integer number num. For every numbers i in the range 0 ≤ i ≤ num calculate the number of 1's in their binary representation and return them as an array.
//LeetCode

func countBits(_ num: Int) -> [Int] {
        
        var array = [Int]()
        for number in 0...num{
            let binaryNumber = String(number, radix: 2)
            let binaryOnes = binaryNumber.filter{$0 == "1"}
            let binaryOnesCount = binaryOnes.count
            array.append(binaryOnesCount)
        }
        return array
        
    }
