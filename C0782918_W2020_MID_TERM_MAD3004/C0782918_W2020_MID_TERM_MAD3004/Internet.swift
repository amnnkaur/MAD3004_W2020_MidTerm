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
    var providerName : String
    var internetGBUsed : String
    
    init(providerName : String, internetGBUsed : String) {
        super.init(billId: <#T##Int#>, billDate: <#T##Date#>, billType: <#T##Enum.type#>, totalBillAmount: <#T##Double#>)
        self.providerName = providerName
        self.internetGBUsed = internetGBUsed
    }
}
