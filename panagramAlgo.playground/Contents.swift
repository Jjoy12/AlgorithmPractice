import UIKit

//tip: A panagram is a string that contains every letter in the alphabet once

//Valid Panagrams
//The quick brown fox jumps over the lazy dog
//ther driven jocks help fax my big quiz
//The five boxing wizards jump quickly

//Invalid Panagrams
//The quick brown fox jumped over the lazy dog
//Three driven jocks heelp fax my big quiz.
//The six boxing wizards jump quickly.


func panagram1(string: String) -> Bool {
    var alphabet = "abcdefghijklmnopqrstuvwxyz"
    
    for letter in string.lowercased(){
        if alphabet.contains(letter){
            alphabet = alphabet.replacingOccurrences(of: String(letter), with: "")
            if alphabet.count == 0{
                return true
            }
        }
    }
    return false
    
}
panagram1(string: "The quick brown fox jumps over the lazy dog")
