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
    var totalBillAmount : Double
    
    init(billId : Int, billDate : Date, billType : Enum.type, totalBillAmount : Double) {
        self.billId = billId
        self.billDate = billDate
        self.billType = billType
        self.totalBillAmount = totalBillAmount
        
    }
    
    func display() {
        print("Bill Id : \(billId)")
        print("Bill Date : \(billDate)")
        print("Bill Type : \(billType)")
    }
}

/*extension Person{
    
    var fullname = String{
        return "\(firstName) \(lastName)"
    }
    
    var age : Int
    {
        guard let bdate = self.birthdate
    }
}*/
