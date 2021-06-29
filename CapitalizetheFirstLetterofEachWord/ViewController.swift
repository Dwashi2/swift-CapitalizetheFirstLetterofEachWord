//
//  ViewController.swift
//  CapitalizetheFirstLetterofEachWord
//
//  Created by Daniel Washington Ignacio on 29/06/21.
//

/*
 Create a function that takes a string as an argument and converts the first character of each word to uppercase. Return the newly formatted string.

 Examples

 makeTitle("This is a title") ➞ "This Is A Title"

 makeTitle("capitalize every word") ➞ "Capitalize Every Word"

 makeTitle("I Like Pizza") ➞ "I Like Pizza"

 makeTitle("PIZZA PIZZA PIZZA") ➞ "PIZZA PIZZA PIZZA"
 Notes

 You can expect a valid string for each test case.
 Some words may contain more than one uppercase letter (see example #4).
 */

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(self.makeTitle("This is a title"))
        print(self.makeTitle("capitalize every word"))
        print(self.makeTitle("I Like Pizza"))
        print(self.makeTitle("PIZZA PIZZA PIZZA"))
    }
    
    func makeTitle(_ str: String) -> String {
        return str.split(separator: " ").map { word in
                let secondIndex = word.index(after: word.startIndex)
                let range = secondIndex..<word.endIndex
                let firstLetter = String(word[word.startIndex]).uppercased()
                return firstLetter + String(word[range])

            }.joined(separator: " ")
        }


}

