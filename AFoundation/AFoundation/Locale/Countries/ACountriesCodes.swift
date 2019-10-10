//
//  AOSRegionCodes.swift
//  agroportex-ios-stage
//
//  Created by Ihor Myroniuk on 1/4/19.
//  Copyright © 2019 Brander. All rights reserved.
//

import Foundation

protocol ACountriesCodes {
  func codeOfRegion(_ region: ACountry) -> String?
  func regionByCode(_ code: String) -> ACountry?
}
