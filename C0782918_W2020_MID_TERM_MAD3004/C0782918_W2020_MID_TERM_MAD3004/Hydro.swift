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
    var unitConsumed : Int
    
    init(billId: Int, billDate: Date, billType: Enum.type, totalBillAmount: Float, agencyName: String, unitConsumed:Int) {
        
        self.agencyName = agencyName
        self.unitConsumed = unitConsumed
        
        super.init(billId: billId, billDate: billDate, billType: Enum.type.HYDRO, totalBillAmount: totalBillAmount)
    }
    
    override func display()
    {
           super.display()
        
           print("\t\tAgency Name: \(agencyName)")
           print("\t\tUnits Consumed: \(unitConsumed.Units())")
       }
}
