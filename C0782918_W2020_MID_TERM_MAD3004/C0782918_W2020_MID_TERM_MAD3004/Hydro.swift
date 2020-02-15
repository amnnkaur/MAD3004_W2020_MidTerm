//
//  Hydro.swift
//  C0782918_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

public class Hydro : Bill
{
    var agencyName : String
    var unitConsumed : String
    
    init(billId: Int, billDate: String, billType: Enum.type, totalBillAmount: Float, agencyName: String, unitConsumed:String) {
        
        self.agencyName = agencyName
        self.unitConsumed = unitConsumed
        
        super.init(billId: billId, billDate: billDate, billType: Enum.type.HYDRO, totalBillAmount: totalBillAmount)
    }
    
    override func display()
    {
           super.display()
        
           print("Agency Name: \(agencyName)")
           print("Units Consumed: \(unitConsumed.Units())")
       }
}
