import UIKit
// Function that detects wether a string is a palindrone

func palindrone(string: String) -> Bool {
    
    return String(string.lowercased().reversed()) == string
    
}
palindrone(string: "level")
