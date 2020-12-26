import UIKit
import Foundation


// Given a string S, return the "reversed" string where all characters that are not a letter stay in the same place, and all letters reverse their positions.
//input: "ab-cd"
//output: "dc-ba"



func reverseOnlyLetters(_ S: String) -> String {
        var onlyLetters = S.filter{$0.lowercased() >= "a" && $0.lowercased() <= "z"}
        var S = Array(S)
        
        
        for(index, letter) in S.enumerated(){
            if onlyLetters.isEmpty {
                break
            }
            else if letter.lowercased() >= "a" && letter.lowercased() <= "z"{
                S.remove(at: index)
                S.insert(onlyLetters.last!, at: index)
                onlyLetters.removeLast()
                
            }
        }
        return S.map{String ($0)}.joined()
    }


