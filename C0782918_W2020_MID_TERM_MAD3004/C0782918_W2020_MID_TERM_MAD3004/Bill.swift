//
//  Bill.swift
//  C0782918_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

public class Bill: IDisplay {
   
    var billId : Int
    var billDate : Date
    var billType : Enum.type
    var totalBillAmount : Float = 0.0
    
    init(billId : Int, billDate : Date, billType : Enum.type) {
        self.billId = billId
        self.billDate = billDate
        self.billType = billType
       // self.totalBillAmount = totalBillAmount
        
    }
    
    func calculateBill() -> Float
    {
        return totalBillAmount
    }
    
    func display() {
        print("\t\tBill Id : \(billId)")
        print("\t\tBill Date : \(billDate.getFormattedDate())")
        print("\t\tBill Type : \(billType)")
        print("\t\tBill Amount: \(calculateBill().currencyFormat())")
    }
}

