//
//  Mobile.swift
//  C0782918_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

public class Mobile : Bill
{
    var mobileManufacturerName : String
    var planName : String
    var mobileNumber : Int
    var internetGBUsed : String
    var minuteUsed : String
    
    init(mobileManufacturerName: String, planName :String, mobileNumber: Int, internetGBUsed: String, minuteUsed: String) {
        super.init(billId: <#T##Int#>, billDate: <#T##Date#>, billType: <#T##Enum.type#>, totalBillAmount: <#T##Double#>)
        self.mobileManufacturerName = mobileManufacturerName
        self.planName = planName
        self.mobileNumber = mobileNumber
        self.internetGBUsed = internetGBUsed
        self.minuteUsed = minuteUsed
    }
}
