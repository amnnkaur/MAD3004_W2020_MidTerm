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
     func concatUnits()->String
    {
        return "\(self) Units"
    }
    
     func conactGB() ->String
    {
        return " \(self) GB"
    }
    
    func concatMin() -> String
    {
        return " \(self) Minutes"
    }
    
}
