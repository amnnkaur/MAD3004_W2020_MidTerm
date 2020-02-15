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
    
    init(billId:Int, billDate: String, billType: Enum.type, totalBillAmount: Double, mobileManufacturerName: String, planName :String, mobileNumber: Int, internetGBUsed: String, minuteUsed: String) {
        
        self.mobileManufacturerName = mobileManufacturerName
        self.planName = planName
        self.mobileNumber = mobileNumber
        self.internetGBUsed = internetGBUsed
        self.minuteUsed = minuteUsed
        
        super.init(billId: billId, billDate: billDate, billType: Enum.type.MOBILE, totalBillAmount: totalBillAmount)
    }
}
