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
    var mobileNumber :String
    var internetGBUsed : Int
    var minuteUsed : Int
    
    init(billId:Int, billDate: Date, billType: Enum.type, mobileManufacturerName: String, planName :String, mobileNumber: String, internetGBUsed: Int, minuteUsed: Int) {
        
        self.mobileManufacturerName = mobileManufacturerName
        self.planName = planName
        self.mobileNumber = mobileNumber
        self.internetGBUsed = internetGBUsed
        self.minuteUsed = minuteUsed
        
        super.init(billId: billId, billDate: billDate, billType: Enum.type.MOBILE)
    }
    
    func mobileNumberValidation(value: String) -> Bool {
        let phonePattern = "^\\d{10}$"
        let phoneTest = NSPredicate(format: "SELF MATCHES %@", phonePattern)
        let result =  phoneTest.evaluate(with: value)
        return result
    }
    
    override func calculateBill() -> Float {
        super.totalBillAmount = 4.0 * Float(self.internetGBUsed) + 2.0 * Float(self.minuteUsed)
        
        return super.totalBillAmount
    }
    
    override func display()
    {
        print("\t\tBill Id : \(billId.mobilePrefix())")
        super.display()
        print("\t\tManufactuer Name : \(mobileManufacturerName)")
        print("\t\tPlan Name: \(planName)")
        
        if self.mobileNumberValidation(value: mobileNumber){
             print("\t\tMobile Number : \(self.mobileNumber)")
        }
        else{
            print("\t\tMobile Number : Mobile number is not valid")
        }
        
        print("\t\tInternet Used: \(internetGBUsed.GB())")
        print("\t\tMinutes Used: \(minuteUsed.Min())")
        
    }
}
