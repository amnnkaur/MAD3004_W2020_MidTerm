//
//  Internet.swift
//  C0782918_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

public class Internet : Bill
{
    var providerName: String
    var internetGBUsed: Int
    
    init(billId: Int, billDate: Date, billType: Enum.type, providerName: String,internetGBUsed: Int )
    {
        
        self.providerName = providerName
        self.internetGBUsed = internetGBUsed
        
        super.init(billId: billId, billDate: billDate, billType: Enum.type.INTERNET)
    }
    
    override func calculateBill() -> Float {
     super.totalBillAmount = 5.0 * Float(self.internetGBUsed)
        
        return super.totalBillAmount
    }
    
    
    override func display()
    {
        super.display()
        print("\t\tProvider Name: \(providerName)")
        print("\t\tInternet GB Used: \(internetGBUsed.GB())")
    }
    
}
