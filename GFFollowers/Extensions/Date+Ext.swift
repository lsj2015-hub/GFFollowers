//
//  Date+Ext.swift
//  GFFollowers
//
//  Created by Sean Lee on 8/21/24.
//

import Foundation


extension Date {
  
  func convertToMonthYearFormat() -> String {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "MMM yyyy"
    
    return dateFormatter.string(from: self)
  }
  
}
