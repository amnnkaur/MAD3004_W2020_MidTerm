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
  var startDate = String()
  var endDate = String()
    
    init(billId: Int, billDate: Date, billType: Enum.type, totalBillAmount: Float, providerName : String, insuranceType : String, startDate : String, endDate : String)
    {
      self.providerName = providerName
      self.insuranceType = insuranceType
      self.startDate = startDate
      self.endDate = endDate
        
      super.init(billId: billId, billDate: billDate, billType: billType)
    }
    
    override func display() {
      super.display()
        
      print("\t\tInsurance provider name : \(providerName)")
      print("\t\tInsurance type : \(insuranceType)")
      print("\t\tStart date : \(startDate)")
      print("\t\tEnd date : \(endDate)")
       
    }
}
