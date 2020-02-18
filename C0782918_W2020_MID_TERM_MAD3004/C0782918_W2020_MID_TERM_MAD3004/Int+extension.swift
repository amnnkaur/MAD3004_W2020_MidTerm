//
//  Int+extension.swift
//  C0782918_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-14.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

extension Int
{
     func Units()-> String
    {
        return "\(self) Units"
    }
    
     func GB() -> String
    {
        return " \(self) GB"
    }
    
    func Min() -> String
    {
        return " \(self) Minutes"
    }
    
    func customerPrefix() -> String
      {
          return "C00\(self)"
      }
      
      func mobilePrefix() -> String
      {
          return "MOBB00\(self)"
      }
    
      func internetPrefix() -> String
      {
          return "INTB00\(self)"
      }
    
      func hydroPrefix() -> String
      {
           return "HYDB00\(self)"
      }
    
}
