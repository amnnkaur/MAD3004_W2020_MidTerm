//
//  Customer.swift
//  C0782918_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

public class Customer
{
    var customerId : Int
    var firstName : String
    var lastName : String
    var fullName : String
    {
        return firstName+lastName
    }
    var emailId : String
    var billDictionary = [String]()
    var totalAmountToPay : Int
   
}
