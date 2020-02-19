//
//  Date+Extension.swift
//  C0782918_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-14.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

extension Date
{
public func getFormattedDate() -> String
  {
      let dateFormatterPrint = DateFormatter()
      dateFormatterPrint.dateFormat = "EEEE, d MMM, yyyy"
  
      let formattedDate = dateFormatterPrint.string(from: self)
      return formattedDate
  }

  static func from(year: Int, month: Int, day: Int) -> Date? {
      let calender = Calendar(identifier: .gregorian)
      var dateComponents = DateComponents()
      dateComponents.year = year
      dateComponents.month = month
      dateComponents.day = day
      return calender.date(from: dateComponents) ?? nil
  }
    
    public static func daysBetween(start: Date, end: Date) -> Int {
      return Calendar.current.dateComponents([.day], from: start, to: end).day!
    }
    
}
