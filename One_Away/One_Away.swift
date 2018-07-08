//
//  One_Away.swift
//  One_Away
//
//  Created by Andrew Lewis on 7/6/18.
//  Copyright © 2018 Andrew Lewis. All rights reserved.
//

import Foundation

class One_Away {
    
    let inputOutput = IO()
    
    func startingPoint(){
        print("Please enter a string.")
        let firstString = inputOutput.getInput()
        
        print("Please enter another string.")
        let secondString = inputOutput.getInput()
        
        let oneAway = checkOneAway(firstString: firstString, secondString: secondString)
        
        if oneAway == false {
            print("The two strings are more than one character apart")
        }else{
            print("The two strings are one character or less apart")
        }
        
    }
    
    func checkOneAway(firstString:String, secondString:String)->Bool {
        
        var oneAway = false
        
        if firstString.count - secondString.count > 2 || firstString.count - secondString.count < -2 {
            return oneAway
        }
        
        var count = 0
        
        for letters in firstString.indices {
            
            let character = firstString[letters]
            
            for characters in firstString.indices {
                if character == firstString[characters]{
                    count += 1
                }
            }
            
            for characters in secondString.indices {
                if character == secondString[characters]{
                    count -= 1
                }
            }
            
            if count > 1 || count < -1 {
                return oneAway
            }
        }
        
        oneAway = true
        return oneAway
    }
}
