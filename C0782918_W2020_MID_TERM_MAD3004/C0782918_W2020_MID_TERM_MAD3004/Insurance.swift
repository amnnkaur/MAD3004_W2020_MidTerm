//
//  Insurance.swift
//  C0782918_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-18.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

public class Insurance : Bill
{
    var providerName : String
    var insuranceType : String
    var startDate : Date
    var endDate : Date
    var totalDays : Int{
        return Date.daysBetween(start: startDate, end: endDate)
    }
    
    init(billId: Int, billDate: Date, billType: Enum.type, providerName : String, insuranceType : String, startDate : Date, endDate : Date)
    {
      self.providerName = providerName
      self.insuranceType = insuranceType
      self.startDate = startDate
      self.endDate = endDate
        
        super.init(billId: billId, billDate: billDate, billType: Enum.type.INSURANCE)
    }
    
    override func calculateBill() -> Float {
        super.totalBillAmount = Float(totalDays * 12)
        return super.totalBillAmount
    }
    
    override func display() {
       print("\t\tBill Id : \(billId)")
      super.display()
        
        print("\t\tInsurance provider name : \(providerName)")
        print("\t\tInsurance type : \(insuranceType)")
        print("\t\tStart date : \(startDate.getFormattedDate())")
        print("\t\tEnd date : \(endDate.getFormattedDate())")
        print("\t\tTotal Days : \(totalDays)")
        
       
    }
}
