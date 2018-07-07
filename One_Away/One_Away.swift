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
        
        
        
        
        return oneAway
    }
}
