import UIKit

//Leet code
//Given an integer array nums where every element appears three times except for one, which appears exactly once. Find the single element and return it.

//Input: nums = [2,2,3,2]
//Output: 3

class Solution{
    func singleNumber(_ nums: [Int]) -> Int {
        
        let mappedNums = nums.map{($0,1)}
        let dict = Dictionary(mappedNums, uniquingKeysWith: +)
        return dict.filter{$0.value == 1}.first!.key
    }
}
