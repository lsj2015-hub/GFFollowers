//
//  GFError.swift
//  GFFollowers
//
//  Created by Sean Lee on 8/16/24.
//

import Foundation

enum GFError: String, Error {
  case invalidUsername  = "This username created an invalid request. Please try again."
  case unabledComplete  = "Unable to complete your request. Please check your internaet connection."
  case invalidResponse  = "Invalid response from the server. Please try again."
  case invalidData      = "The data received from the server was invalid. Please try again."
}
