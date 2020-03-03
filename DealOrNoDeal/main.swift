//
//  main.swift
//  DealOrNoDeal
//
//  Created by Gordon, Russell on 2020-02-04.
//  Copyright © 2020 Gordon, Russell. All rights reserved.
//

import Foundation

//
//  main.swift
//  DealOrNoDeal
//
//  Created by Gordon, Russell on 2020-02-04.
//  Copyright © 2020 Gordon, Russell. All rights reserved.
//
import Foundation

//
// INPUT SECTION OF PROGRAM
//
var briefcasesOpened = -1

// Loop until valid input provided by user
while true {
    
    // Ask for input
    print("How many briefcases have been opened?")
    guard let inputGiven = readLine() else {
        
        // No input given, return to top of loop and ask again
        continue
    }
    
    // Attempt to make input into an integer
    guard let integerGiven = Int(inputGiven) else {
        
        // Could not make input into an integer, so return to top and ask again
        continue

    }
    
    // Check that integer is in desired range
    // REMEMBER: Guard statement conditions describe what we WANT
    guard integerGiven > 0, integerGiven < 11 else {
        
        // Integer not in desired range, return to top and ask again
        continue
        
    }
    
    // If we've made it here, the input is valid
    briefcasesOpened = integerGiven
    
    // Stop looping
    break
    
}

//
// PROCESS SECTION OF PROGRAM
//
// Create the array with briefcase values
var briefcaseValues = [100, 500, 1_000, 5_000, 10_000, 25_000, 50_000, 100_000, 500_000, 1_000_000]


// Ask what briefcase was opened on what turn
func getBriefcaseOpened(onTurn turn: Int) -> Int {
   
    // Loop until valid input provided by user
    while true {
        
        // Ask for input
        print("Which briefcase was opened on \(turn)? ")
        guard let inputGiven = readLine() else {
            
            // No input given, return to top of loop and ask again
            continue
        }
        
        // Attempt to make input into an integer
        guard let integerGiven = Int(inputGiven) else {
            
            // Could not make input into an integer, so return to top and ask again
            continue

        }
        
        // Check that integer is in desired range
        // REMEMBER: Guard statement conditions describe what we WANT
        guard integerGiven > 0, integerGiven < 11 else {
            
            // Integer not in desired range, return to top and ask again
            continue
            
        }
        
        return integerGiven
        
    }
    
}

// We need to know what specific briefcases were opened
// If briefcasesOpened is 4, we need to ask four times

for x in 1...briefcasesOpened {
    // Get the briefcase that was opened
    let theBriefCaseOpened = getBriefcaseOpened(onTurn: x)
    
    // Change the value of the briefcase that was picked to be zero
    briefcaseValues[theBriefCaseOpened - 1] = 0
}

let briefcasesAverage = (briefcaseValues[0] + briefcaseValues[1] + briefcaseValues[2] + briefcaseValues[3] + briefcaseValues[4] + briefcaseValues[5] + briefcaseValues[6] + briefcaseValues[7] + briefcaseValues[8] + briefcaseValues[9]) / (10 - briefcasesOpened)
    
var bankersOffer = 0


while true {

print("What is the bankers offer?")
guard let inputGiven = readLine() else {
    
    // No input given, return to top of loop and ask again
    continue
}

// Attempt to make input into an integer
guard let integerGiven = Int(inputGiven) else {
    
    // Could not make input into an integer, so return to top and ask again
    continue

}

// Check that integer is in desired range
// REMEMBER: Guard statement conditions describe what we WANT
guard integerGiven > 0, integerGiven < 1_000_000 else {
    
    // Integer not in desired range, return to top and ask again
    continue
}
    bankersOffer = integerGiven
    // Stop the loop
    break
}

if bankersOffer > briefcasesAverage  {
    print("Deal")
}else {
    print("No Deal")
}



// PURPOSE:
//
// Asks the user for a briefcase that is opened during a turn, as shown in the example.
// When the input is invalid, the prompt is repeated.
//
// INPUT / PARAMETERS:
//
// What turn it is
//
// OUTPUT / RETURN VALUE:
//
// An integer between 1 and 10, inclusive



// STUDENTS: Do any remaining calculations you might need below.



//
// OUTPUT SECTION OF PROGRAM
//
// STUDENTS: Now tell the player whether to take the deal, or not.


