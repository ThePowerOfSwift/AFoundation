//
//  AOSCurrenciesCodes.swift
//  AOperatingSystem
//
//  Created by Ihor Myroniuk on 2/26/19.
//  Copyright © 2019 Ihor Myroniuk. All rights reserved.
//

import Foundation

protocol ACurrenciesCodes {
  func codeOfCurrency(_ currency: ACurrency) -> String?
  func currencyByCode(_ code: String) -> ACurrency?
}
