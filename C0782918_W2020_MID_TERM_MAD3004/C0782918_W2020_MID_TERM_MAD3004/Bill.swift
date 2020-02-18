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
    var billDate = String()
    var billType : Enum.type
    var totalBillAmount : Float
    
    init(billId : Int, billDate : String, billType : Enum.type, totalBillAmount : Float) {
        self.billId = billId
        self.billDate = billDate
        self.billType = billType
        self.totalBillAmount = totalBillAmount
        
    }
    
    func display() {
        print("\t\tBill Id : \(billId)")
        print("\t\tBill Date : \(billDate)")
        print("\t\tBill Type : \(billType)")
        print("\t\tBill Amount: \(totalBillAmount.currencyFormat())")
    }
}

